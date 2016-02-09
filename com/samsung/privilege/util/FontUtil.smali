.class public Lcom/samsung/privilege/util/FontUtil;
.super Ljava/lang/Object;
.source "FontUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SetFontDefault(Landroid/widget/Button;Landroid/content/Context;I)V
    .registers 9
    .param p0, "btButton"    # Landroid/widget/Button;
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "style"    # I

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_29

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/kit55p.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 44
    .local v0, "fontDefault":Landroid/graphics/Typeface;
    invoke-virtual {p0, v0, p2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 46
    invoke-virtual {p0}, Landroid/widget/Button;->getTextSize()F

    move-result v3

    .line 47
    .local v3, "fontSize":F
    invoke-static {p1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SCALE(Landroid/content/Context;)D

    move-result-wide v1

    .line 48
    .local v1, "fontScale":D
    float-to-double v4, v3

    mul-double/2addr v4, v1

    double-to-float v4, v4

    invoke-virtual {p0, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 50
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 52
    .end local v0    # "fontDefault":Landroid/graphics/Typeface;
    .end local v1    # "fontScale":D
    .end local v3    # "fontSize":F
    :cond_29
    return-void
.end method

.method public static SetFontDefault(Landroid/widget/EditText;Landroid/content/Context;I)V
    .registers 9
    .param p0, "etText"    # Landroid/widget/EditText;
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "style"    # I

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_29

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/kit55p.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 31
    .local v0, "fontDefault":Landroid/graphics/Typeface;
    invoke-virtual {p0, v0, p2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 33
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSize()F

    move-result v3

    .line 34
    .local v3, "fontSize":F
    invoke-static {p1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SCALE(Landroid/content/Context;)D

    move-result-wide v1

    .line 35
    .local v1, "fontScale":D
    float-to-double v4, v3

    mul-double/2addr v4, v1

    double-to-float v4, v4

    invoke-virtual {p0, v4}, Landroid/widget/EditText;->setTextSize(F)V

    .line 37
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 39
    .end local v0    # "fontDefault":Landroid/graphics/Typeface;
    .end local v1    # "fontScale":D
    .end local v3    # "fontSize":F
    :cond_29
    return-void
.end method

.method public static SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;I)V
    .registers 9
    .param p0, "tvText"    # Landroid/widget/TextView;
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "style"    # I

    .prologue
    .line 15
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2f

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/kit55p.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 17
    .local v0, "fontDefault":Landroid/graphics/Typeface;
    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 19
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    .line 20
    .local v3, "fontSize":F
    invoke-static {p1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SCALE(Landroid/content/Context;)D

    move-result-wide v1

    .line 21
    .local v1, "fontScale":D
    float-to-double v4, v3

    mul-double/2addr v4, v1

    double-to-float v4, v4

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 22
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000

    invoke-virtual {p0, v4, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 24
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 26
    .end local v0    # "fontDefault":Landroid/graphics/Typeface;
    .end local v1    # "fontScale":D
    .end local v3    # "fontSize":F
    :cond_2f
    return-void
.end method
