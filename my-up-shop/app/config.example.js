// UP Shops - ตัวอย่างไฟล์ config (commit ไฟล์นี้แทน config.js)
// วิธีใช้:
// 1. ก๊อปไฟล์นี้เป็น config.js (อยู่ในโฟลเดอร์ app/ เดียวกัน)
// 2. ขอค่าได้ที่ Supabase Dashboard > Settings > API (URL + anon public key)
// 3. ใส่ค่าจริงลง config.js — ห้าม commit config.js ขึ้น git (อยู่ใน .gitignore แล้ว)
window.UPSHOPS_CONFIG = {
  SUPABASE_URL: 'PUT_YOUR_SUPABASE_URL_HERE',
  SUPABASE_KEY: 'PUT_YOUR_ANON_KEY_HERE'
};
