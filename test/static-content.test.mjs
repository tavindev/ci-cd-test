import { readFile } from 'node:fs/promises'
import { test } from 'node:test'
import assert from 'node:assert/strict'

test('static landing page includes the expected status copy', async () => {
  const html = await readFile(new URL('../your-static-content/index.html', import.meta.url), 'utf8')

  assert.match(html, /CI\/CD Test Application/)
  assert.match(html, /Application Status: Running/)
  assert.match(html, /Docker container was built successfully/)
  assert.match(html, /simple static website served by NGINX/)
  assert.match(html, /Welcome to the CI\/CD test application!/)

})
