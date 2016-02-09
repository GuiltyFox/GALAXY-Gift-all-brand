.class public Lic/buzzebeeslib/util/FontUtil;
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
    .registers 3
    .param p0, "btButton"    # Landroid/widget/Button;
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-static {p0, p1, v0, v0}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/Button;Landroid/content/Context;II)V

    .line 62
    return-void
.end method

.method public static SetFontDefault(Landroid/widget/Button;Landroid/content/Context;II)V
    .registers 8
    .param p0, "btButton"    # Landroid/widget/Button;
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "step"    # I
    .param p3, "style"    # I

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_25

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/kit55p.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 67
    .local v0, "fontDefault":Landroid/graphics/Typeface;
    invoke-virtual {p0, v0, p3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 78
    sget v1, Lic/buzzebeeslib/LibConst;->FONTS_DEFAULT_SIZE:F

    sget v2, Lic/buzzebeeslib/LibConst;->FONTS_DEFAULT_SIZE_STEP:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 80
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 82
    .end local v0    # "fontDefault":Landroid/graphics/Typeface;
    :cond_25
    return-void
.end method

.method public static SetFontDefault(Landroid/widget/EditText;Landroid/content/Context;)V
    .registers 3
    .param p0, "etText"    # Landroid/widget/EditText;
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-static {p0, p1, v0, v0}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/EditText;Landroid/content/Context;II)V

    .line 38
    return-void
.end method

.method public static SetFontDefault(Landroid/widget/EditText;Landroid/content/Context;II)V
    .registers 8
    .param p0, "etText"    # Landroid/widget/EditText;
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "step"    # I
    .param p3, "style"    # I

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_25

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/kit55p.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 43
    .local v0, "fontDefault":Landroid/graphics/Typeface;
    invoke-virtual {p0, v0, p3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 54
    sget v1, Lic/buzzebeeslib/LibConst;->FONTS_DEFAULT_SIZE:F

    sget v2, Lic/buzzebeeslib/LibConst;->FONTS_DEFAULT_SIZE_STEP:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 56
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 58
    .end local v0    # "fontDefault":Landroid/graphics/Typeface;
    :cond_25
    return-void
.end method

.method public static SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V
    .registers 3
    .param p0, "tvText"    # Landroid/widget/TextView;
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-static {p0, p1, v0, v0}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 14
    return-void
.end method

.method public static SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V
    .registers 8
    .param p0, "tvText"    # Landroid/widget/TextView;
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "step"    # I
    .param p3, "style"    # I

    .prologue
    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_25

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/kit55p.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 19
    .local v0, "fontDefault":Landroid/graphics/Typeface;
    invoke-virtual {p0, v0, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 30
    sget v1, Lic/buzzebeeslib/LibConst;->FONTS_DEFAULT_SIZE:F

    sget v2, Lic/buzzebeeslib/LibConst;->FONTS_DEFAULT_SIZE_STEP:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 32
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 34
    .end local v0    # "fontDefault":Landroid/graphics/Typeface;
    :cond_25
    return-void
.end method
