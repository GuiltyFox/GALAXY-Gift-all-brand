.class Luk/co/chrisjenx/calligraphy/CalligraphyFactory;
.super Ljava/lang/Object;
.source "CalligraphyFactory.java"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->a:I

    .line 97
    return-void
.end method

.method protected static a(Landroid/view/View;)Z
    .registers 2

    .prologue
    .line 77
    invoke-static {}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected static a(Landroid/view/View;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    .line 90
    :goto_8
    return v0

    .line 89
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_8
.end method

.method protected static a(Landroid/widget/TextView;)[I
    .registers 6

    .prologue
    const v4, 0x10102ce

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 26
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_5a

    .line 28
    invoke-static {p0}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->b(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 29
    aput v4, v1, v3

    .line 30
    const v0, 0x10102f8

    aput v0, v1, v2

    .line 35
    :cond_18
    :goto_18
    aget v0, v1, v3

    const/4 v2, -0x1

    if-ne v0, v2, :cond_47

    .line 37
    invoke-static {}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->a()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->f()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 38
    invoke-static {}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->a()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->f()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_45
    aput v0, v1, v3

    .line 41
    :cond_47
    return-object v1

    .line 31
    :cond_48
    invoke-static {p0}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->c(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 32
    aput v4, v1, v3

    .line 33
    const v0, 0x10102f9

    aput v0, v1, v2

    goto :goto_18

    .line 38
    :cond_56
    const v0, 0x1010034

    goto :goto_45

    .line 26
    :array_5a
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method protected static b(Landroid/widget/TextView;)Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 52
    const-string/jumbo v0, "action_bar_title"

    invoke-static {p0, v0}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->a(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    .line 57
    :goto_a
    return v0

    .line 53
    :cond_b
    invoke-static {p0}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 54
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 55
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_a

    .line 57
    :cond_24
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected static c(Landroid/widget/TextView;)Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 68
    const-string/jumbo v0, "action_bar_subtitle"

    invoke-static {p0, v0}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->a(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    .line 73
    :goto_a
    return v0

    .line 69
    :cond_b
    invoke-static {p0}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 70
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 71
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_a

    .line 73
    :cond_24
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    .prologue
    .line 109
    if-eqz p1, :cond_16

    sget v0, Luk/co/chrisjenx/calligraphy/R$id;->calligraphy_tag_id:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_16

    .line 110
    invoke-virtual {p0, p1, p2, p3}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->b(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    sget v0, Luk/co/chrisjenx/calligraphy/R$id;->calligraphy_tag_id:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 113
    :cond_16
    return-object p1
.end method

.method b(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_6c

    move-object v0, p1

    .line 121
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v0}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->b(Landroid/graphics/Typeface;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 181
    :cond_13
    :goto_13
    return-void

    .line 128
    :cond_14
    iget v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->a:I

    invoke-static {p2, p3, v0}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 132
    iget v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->a:I

    invoke-static {p2, p3, v0}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->b(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 137
    iget v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->a:I

    invoke-static {p2, p3, v0}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->c(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v0

    .line 141
    :cond_32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8f

    move-object v0, p1

    .line 142
    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->a(Landroid/widget/TextView;)[I

    move-result-object v0

    .line 143
    aget v1, v0, v3

    const/4 v4, -0x1

    if-eq v1, v4, :cond_85

    .line 144
    aget v1, v0, v2

    aget v0, v0, v3

    iget v4, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->a:I

    invoke-static {p2, v1, v0, v4}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->a(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 150
    :goto_4f
    const-string/jumbo v0, "action_bar_title"

    invoke-static {p1, v0}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->a(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_61

    const-string/jumbo v0, "action_bar_subtitle"

    invoke-static {p1, v0}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->a(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    :cond_61
    move v2, v3

    :cond_62
    move-object v0, p1

    .line 152
    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->a()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    move-result-object v3

    invoke-static {p2, v0, v3, v1, v2}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->a(Landroid/content/Context;Landroid/widget/TextView;Luk/co/chrisjenx/calligraphy/CalligraphyConfig;Ljava/lang/String;Z)V

    .line 157
    :cond_6c
    invoke-static {}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    instance-of v0, p1, Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_13

    .line 158
    check-cast p1, Landroid/view/ViewGroup;

    .line 159
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Luk/co/chrisjenx/calligraphy/CalligraphyFactory$1;

    invoke-direct {v1, p0, p1, p2}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory$1;-><init>(Luk/co/chrisjenx/calligraphy/CalligraphyFactory;Landroid/view/ViewGroup;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_13

    .line 146
    :cond_85
    aget v0, v0, v2

    iget v1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->a:I

    invoke-static {p2, v0, v1}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_4f

    :cond_8f
    move-object v1, v0

    goto :goto_4f
.end method
