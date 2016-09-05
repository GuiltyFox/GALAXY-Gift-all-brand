.class public Lcom/samsung/privilege/util/ScreenUtil;
.super Ljava/lang/Object;
.source "ScreenUtil.java"


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/samsung/privilege/util/ScreenUtil;->a:I

    return-void
.end method

.method public static a(Landroid/app/Activity;)I
    .registers 3

    .prologue
    .line 42
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v0

    .line 46
    :goto_b
    return v0

    .line 44
    :catch_c
    move-exception v0

    .line 45
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 46
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public static a(Landroid/app/Activity;II)V
    .registers 7

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 32
    int-to-float v2, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 37
    return-void
.end method

.method public static b(Landroid/app/Activity;)I
    .registers 3

    .prologue
    .line 52
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v0

    .line 55
    :goto_b
    return v0

    .line 54
    :catch_c
    move-exception v0

    .line 55
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static c(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 92
    const/16 v0, 0x64

    .line 93
    :try_start_2
    invoke-static {p0}, Lcom/samsung/privilege/util/ScreenUtil;->a(Landroid/app/Activity;)I

    move-result v1

    if-nez v1, :cond_13

    .line 94
    invoke-static {p0}, Lcom/samsung/privilege/util/ScreenUtil;->b(Landroid/app/Activity;)I

    move-result v1

    sput v1, Lcom/samsung/privilege/util/ScreenUtil;->a:I

    .line 95
    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Lcom/samsung/privilege/util/ScreenUtil;->a(Landroid/app/Activity;II)V

    .line 97
    :cond_13
    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Lcom/samsung/privilege/util/ScreenUtil;->a(Landroid/app/Activity;II)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_19

    .line 101
    :goto_18
    return-void

    .line 98
    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method public static d(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 135
    :try_start_0
    invoke-static {p0}, Lcom/samsung/privilege/util/ScreenUtil;->a(Landroid/app/Activity;)I

    move-result v0

    if-nez v0, :cond_e

    .line 136
    sget v0, Lcom/samsung/privilege/util/ScreenUtil;->a:I

    sget v1, Lcom/samsung/privilege/util/ScreenUtil;->a:I

    invoke-static {p0, v0, v1}, Lcom/samsung/privilege/util/ScreenUtil;->a(Landroid/app/Activity;II)V

    .line 143
    :goto_d
    return-void

    .line 138
    :cond_e
    const/16 v0, 0x32

    const/16 v1, 0x80

    invoke-static {p0, v0, v1}, Lcom/samsung/privilege/util/ScreenUtil;->a(Landroid/app/Activity;II)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_d

    .line 140
    :catch_16
    move-exception v0

    goto :goto_d
.end method
