.class public Lcom/samsung/privilege/control/TextViewFontMenu;
.super Landroid/widget/TextView;
.source "TextViewFontMenu.java"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/privilege/control/TextViewFontMenu;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/privilege/control/TextViewFontMenu;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v3, 0x40800000    # 4.0f

    .line 29
    invoke-virtual {p0}, Lcom/samsung/privilege/control/TextViewFontMenu;->isInEditMode()Z

    move-result v0

    if-ne v0, v5, :cond_c

    .line 70
    :cond_b
    :goto_b
    return-void

    .line 32
    :cond_c
    if-nez p1, :cond_1d

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/kit55p.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFontMenu;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_b

    .line 36
    :cond_1d
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1033"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 39
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 41
    :cond_32
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/control/TextViewFontMenu;->setTypeface(Landroid/graphics/Typeface;)V

    .line 43
    invoke-virtual {p0}, Lcom/samsung/privilege/control/TextViewFontMenu;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    .line 44
    const-string/jumbo v1, "fonts/kit55p.ttf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 66
    :cond_4c
    :goto_4c
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFontMenu;->setTag(Ljava/lang/Object;)V

    goto :goto_b

    .line 46
    :cond_54
    const-string/jumbo v1, "fonts/phetsarath_ot.ttf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string/jumbo v1, "fonts/zawgyi_one.ttf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 47
    :cond_66
    invoke-virtual {p0}, Lcom/samsung/privilege/control/TextViewFontMenu;->getTextSize()F

    move-result v0

    .line 48
    const/high16 v1, 0x42400000    # 48.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_79

    .line 49
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v0

    sub-float/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFontMenu;->setTextSize(F)V

    goto :goto_4c

    .line 50
    :cond_79
    const/high16 v1, 0x42800000    # 64.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_88

    .line 51
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v0

    sub-float/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFontMenu;->setTextSize(F)V

    goto :goto_4c

    .line 52
    :cond_88
    const/high16 v1, 0x42a00000    # 80.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_96

    .line 53
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFontMenu;->setTextSize(F)V

    goto :goto_4c

    .line 54
    :cond_96
    const/high16 v1, 0x42c00000    # 96.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_a5

    .line 55
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v0

    add-float/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFontMenu;->setTextSize(F)V

    goto :goto_4c

    .line 56
    :cond_a5
    const/high16 v1, 0x42f00000    # 120.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_b4

    .line 57
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v0

    add-float/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFontMenu;->setTextSize(F)V

    goto :goto_4c

    .line 58
    :cond_b4
    const/high16 v1, 0x43480000    # 200.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_c5

    .line 59
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFontMenu;->setTextSize(F)V

    goto :goto_4c

    .line 61
    :cond_c5
    const-string/jumbo v1, "TextViewFontMenu"

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

    .line 62
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/TextViewFontMenu;->setTextSize(F)V

    goto/16 :goto_4c
.end method
