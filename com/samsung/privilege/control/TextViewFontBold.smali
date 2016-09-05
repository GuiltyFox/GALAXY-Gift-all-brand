.class public Lcom/samsung/privilege/control/TextViewFontBold;
.super Landroid/widget/TextView;
.source "TextViewFontBold.java"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/control/TextViewFontBold;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/control/TextViewFontBold;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .prologue
    const/high16 v5, 0x41000000    # 8.0f

    const/high16 v3, 0x40800000    # 4.0f

    const/4 v4, 0x1

    .line 31
    invoke-virtual {p0}, Lcom/samsung/privilege/control/TextViewFontBold;->isInEditMode()Z

    move-result v0

    if-ne v0, v4, :cond_c

    .line 68
    :cond_b
    :goto_b
    return-void

    .line 34
    :cond_c
    if-nez p1, :cond_1d

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/kit55p.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 36
    invoke-virtual {p0, v0, v4}, Lcom/samsung/privilege/control/TextViewFontBold;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_b

    .line 38
    :cond_1d
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/samsung/privilege/control/TextViewFontBold;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 41
    invoke-virtual {p0}, Lcom/samsung/privilege/control/TextViewFontBold;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    .line 42
    const-string/jumbo v1, "fonts/kit55p.ttf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 64
    :cond_3f
    :goto_3f
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFontBold;->setTag(Ljava/lang/Object;)V

    goto :goto_b

    .line 44
    :cond_47
    const-string/jumbo v1, "fonts/phetsarath_ot.ttf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    const-string/jumbo v1, "fonts/zawgyi_one.ttf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 45
    :cond_59
    invoke-virtual {p0}, Lcom/samsung/privilege/control/TextViewFontBold;->getTextSize()F

    move-result v0

    .line 46
    const/high16 v1, 0x42400000    # 48.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_6c

    .line 47
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v0

    sub-float/2addr v0, v5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFontBold;->setTextSize(F)V

    goto :goto_3f

    .line 48
    :cond_6c
    const/high16 v1, 0x42800000    # 64.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_7b

    .line 49
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v0

    sub-float/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFontBold;->setTextSize(F)V

    goto :goto_3f

    .line 50
    :cond_7b
    const/high16 v1, 0x42a00000    # 80.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_89

    .line 51
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFontBold;->setTextSize(F)V

    goto :goto_3f

    .line 52
    :cond_89
    const/high16 v1, 0x42c00000    # 96.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_98

    .line 53
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v0

    add-float/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFontBold;->setTextSize(F)V

    goto :goto_3f

    .line 54
    :cond_98
    const/high16 v1, 0x42f00000    # 120.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_a7

    .line 55
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v0

    add-float/2addr v0, v5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFontBold;->setTextSize(F)V

    goto :goto_3f

    .line 56
    :cond_a7
    const/high16 v1, 0x43480000    # 200.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_b8

    .line 57
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFontBold;->setTextSize(F)V

    goto :goto_3f

    .line 59
    :cond_b8
    const-string/jumbo v1, "TextViewFont"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "text_size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFontBold;->setTextSize(F)V

    goto/16 :goto_3f
.end method
