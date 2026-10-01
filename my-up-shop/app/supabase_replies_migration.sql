-- เพิ่มคอลัมน์สำหรับ "ตอบกลับรีวิว" โดยเจ้าของร้าน
-- วิธีใช้: เปิด Supabase Dashboard > SQL Editor > วางไฟล์นี้ > Run
-- รันซ้ำได้ (IF NOT EXISTS) ถ้าคอลัมน์มีอยู่แล้ว

alter table public."Review"
    add column if not exists "ReviewReply"     text null,
    add column if not exists "ReviewRepliedAt" timestamptz null,
    add column if not exists "ReviewReplyUser" integer null;

-- FK ให้ตาราง User (ปิดไว้ก่อนถ้า User.UserID ไม่ใช่ integer หรือชื่อคอลัมน์ไม่ตรง)
-- alter table public."Review"
--     add constraint "Review_ReviewReplyUser_fkey"
--     foreign key ("ReviewReplyUser") references public."User"("UserID") on delete set null;

create index if not exists "Review_ReviewShop_idx" on public."Review" ("ReviewShop");