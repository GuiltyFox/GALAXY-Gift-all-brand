.class public Lcom/bzbs/lib/survey/util/FontUtil;
.super Ljava/lang/Object;
.source "FontUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SetFontDefault(Landroid/widget/Button;Landroid/content/Context;)V
    .registers 8
    .param p0, "btButton"    # Landroid/widget/Button;
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_28

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, "fonts/kit55p.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 41
    .local v0, "fontDefault":Landroid/graphics/Typeface;
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 43
    invoke-virtual {p0}, Landroid/widget/Button;->getTextSize()F

    move-result v1

    .line 44
    .local v1, "fontSize":F
    sget-wide v2, Lcom/bzbs/lib/survey/LibConst;->FONTS_DEFAULT_SCALE:D

    .line 45
    .local v2, "fontScale":D
    float-to-double v4, v1

    mul-double/2addr v4, v2

    double-to-float v4, v4

    invoke-virtual {p0, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 47
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 49
    .end local v0    # "fontDefault":Landroid/graphics/Typeface;
    .end local v1    # "fontSize":F
    .end local v2    # "fontScale":D
    :cond_28
    return-void
.end method

.method public static SetFontDefault(Landroid/widget/EditText;Landroid/content/Context;)V
    .registers 8
    .param p0, "etText"    # Landroid/widget/EditText;
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_28

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, "fonts/kit55p.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 28
    .local v0, "fontDefault":Landroid/graphics/Typeface;
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 30
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    .line 31
    .local v1, "fontSize":F
    sget-wide v2, Lcom/bzbs/lib/survey/LibConst;->FONTS_DEFAULT_SCALE:D

    .line 32
    .local v2, "fontScale":D
    float-to-double v4, v1

    mul-double/2addr v4, v2

    double-to-float v4, v4

    invoke-virtual {p0, v4}, Landroid/widget/EditText;->setTextSize(F)V

    .line 34
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 36
    .end local v0    # "fontDefault":Landroid/graphics/Typeface;
    .end local v1    # "fontSize":F
    .end local v2    # "fontScale":D
    :cond_28
    return-void
.end method

.method public static SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V
    .registers 8
    .param p0, "tvText"    # Landroid/widget/TextView;
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_28

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, "fonts/kit55p.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 15
    .local v0, "fontDefault":Landroid/graphics/Typeface;
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    .line 18
    .local v1, "fontSize":F
    sget-wide v2, Lcom/bzbs/lib/survey/LibConst;->FONTS_DEFAULT_SCALE:D

    .line 19
    .local v2, "fontScale":D
    float-to-double v4, v1

    mul-double/2addr v4, v2

    double-to-float v4, v4

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 21
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 23
    .end local v0    # "fontDefault":Landroid/graphics/Typeface;
    .end local v1    # "fontSize":F
    .end local v2    # "fontScale":D
    :cond_28
    return-void
.end method
