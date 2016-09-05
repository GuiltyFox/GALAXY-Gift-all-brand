.class public Lcom/samsung/privilege/control/TextViewFont;
.super Landroid/widget/TextView;
.source "TextViewFont.java"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/privilege/control/TextViewFont;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/privilege/control/TextViewFont;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x41000000    # 8.0f

    const/high16 v2, 0x40800000    # 4.0f

    .line 28
    invoke-virtual {p0}, Lcom/samsung/privilege/control/TextViewFont;->isInEditMode()Z

    move-result v0

    if-ne v0, v4, :cond_c

    .line 65
    :cond_b
    :goto_b
    return-void

    .line 31
    :cond_c
    if-nez p1, :cond_1d

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/kit55p.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFont;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_b

    .line 35
    :cond_1d
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/control/TextViewFont;->setTypeface(Landroid/graphics/Typeface;)V

    .line 38
    invoke-virtual {p0}, Lcom/samsung/privilege/control/TextViewFont;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    .line 39
    const-string/jumbo v1, "fonts/kit55p.ttf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 61
    :cond_3b
    :goto_3b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFont;->setTag(Ljava/lang/Object;)V

    goto :goto_b

    .line 41
    :cond_43
    const-string/jumbo v1, "fonts/phetsarath_ot.ttf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string/jumbo v1, "fonts/zawgyi_one.ttf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 42
    :cond_55
    invoke-virtual {p0}, Lcom/samsung/privilege/control/TextViewFont;->getTextSize()F

    move-result v0

    .line 43
    const/high16 v1, 0x42400000    # 48.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_68

    .line 44
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v0

    sub-float/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFont;->setTextSize(F)V

    goto :goto_3b

    .line 45
    :cond_68
    const/high16 v1, 0x42800000    # 64.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_77

    .line 46
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v0

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFont;->setTextSize(F)V

    goto :goto_3b

    .line 47
    :cond_77
    const/high16 v1, 0x42a00000    # 80.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_85

    .line 48
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFont;->setTextSize(F)V

    goto :goto_3b

    .line 49
    :cond_85
    const/high16 v1, 0x42c00000    # 96.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_94

    .line 50
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v0

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFont;->setTextSize(F)V

    goto :goto_3b

    .line 51
    :cond_94
    const/high16 v1, 0x42f00000    # 120.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_a3

    .line 52
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v0

    add-float/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFont;->setTextSize(F)V

    goto :goto_3b

    .line 53
    :cond_a3
    const/high16 v1, 0x43480000    # 200.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_b4

    .line 54
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFont;->setTextSize(F)V

    goto :goto_3b

    .line 56
    :cond_b4
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

    .line 57
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFont;->setTextSize(F)V

    goto/16 :goto_3b
.end method
