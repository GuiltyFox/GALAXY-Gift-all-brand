.class public Lic/buzzebeeslib/util/ScreenUtil;
.super Ljava/lang/Object;
.source "ScreenUtil.java"


# static fields
.field public static DEFAULT_MANUAL:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput v0, Lic/buzzebeeslib/util/ScreenUtil;->DEFAULT_MANUAL:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBrightnessLevel(Landroid/app/Activity;)I
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 56
    :goto_a
    return v1

    .line 55
    :catch_b
    move-exception v0

    .line 56
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static getBrightnessMode(Landroid/app/Activity;)I
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 43
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 44
    const-string v2, "screen_brightness_mode"

    .line 43
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 47
    :goto_a
    return v1

    .line 45
    :catch_b
    move-exception v0

    .line 46
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 47
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public static setBrightness(Landroid/app/Activity;II)V
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "TARGET"    # I
    .param p2, "progress"    # I

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 32
    .local v1, "w":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 33
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    int-to-float v2, p1

    const/high16 v3, 0x42c80000

    div-float/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 34
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 37
    const-string v3, "screen_brightness"

    .line 36
    invoke-static {v2, v3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 38
    return-void
.end method
