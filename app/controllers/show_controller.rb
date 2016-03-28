# 取得show頁面前，先取得當前使用者的ID。
# 檢查當前頁面的所有comment，若commend.user.id與當前使用者id相同。
# 該commend顯示update、destroy選項，
# 否則只顯示內容

# current.user.id 是如何定義？
# 預設會與model中的user.id 相同嗎？
# 上述解決方案，應該如何程式化？