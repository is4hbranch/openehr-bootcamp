const API = '/ehrbase/rest/openehr/v1';
const $ = (id) => document.getElementById(id);

$('check').onclick = async () => {
  const r = await fetch('/ehrbase/rest/status').catch(() => null);
  $('status').textContent = r && r.ok ? 'Connected' : 'Not reachable yet - wait a minute and retry';
};

$('create').onclick = async () => {
  const r = await fetch(`${API}/ehr`, {
    method: 'POST',
    headers: { Accept: 'application/json', Prefer: 'return=representation' },
  });
  const body = await r.json().catch(() => ({}));
  $('ehr').textContent = r.ok ? `EHR created: ${body.ehr_id?.value}` : `Error ${r.status}`;
};

$('templates').onclick = async () => {
  const r = await fetch(`${API}/definition/template/adl1.4`, { headers: { Accept: 'application/json' } });
  const list = await r.json().catch(() => []);
  $('list').textContent = list.length
    ? list.map((t) => t.template_id).join('\n')
    : 'No templates yet - upload one (see START-HERE.md)';
};
