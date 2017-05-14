.class Landroid/support/v4/view/ViewCompatBase;
.super Ljava/lang/Object;
.source "ViewCompatBase.java"


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Z

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Z


# direct methods
.method static a(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 36
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    .line 37
    invoke-interface {p0}, Landroid/support/v4/view/TintableBackgroundView;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static a(Landroid/view/View;I)V
    .registers 9

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 115
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 117
    if-eqz p1, :cond_2a

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 120
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2b

    .line 121
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 122
    check-cast v0, Landroid/view/View;

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v1, v2

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v1, v6

    add-int/2addr v1, v2

    .line 122
    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/view/View;->invalidate(IIII)V

    .line 131
    :cond_2a
    :goto_2a
    return-void

    .line 128
    :cond_2b
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2a
.end method

.method static a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 3

    .prologue
    .line 42
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_9

    .line 43
    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    invoke-interface {p0, p1}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 45
    :cond_9
    return-void
.end method

.method static a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .prologue
    .line 54
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_9

    .line 55
    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    invoke-interface {p0, p1}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 57
    :cond_9
    return-void
.end method

.method static b(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 48
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    .line 49
    invoke-interface {p0}, Landroid/support/v4/view/TintableBackgroundView;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static b(Landroid/view/View;I)V
    .registers 8

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 135
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 137
    if-eqz p1, :cond_2a

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 140
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2b

    .line 141
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 142
    check-cast v0, Landroid/view/View;

    sub-int v3, v1, v2

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v1, v5

    add-int/2addr v1, v2

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 142
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->invalidate(IIII)V

    .line 151
    :cond_2a
    :goto_2a
    return-void

    .line 148
    :cond_2b
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2a
.end method

.method static c(Landroid/view/View;)Z
    .registers 2

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static d(Landroid/view/View;)I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 64
    sget-boolean v0, Landroid/support/v4/view/ViewCompatBase;->b:Z

    if-nez v0, :cond_18

    .line 66
    :try_start_5
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "mMinWidth"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/ViewCompatBase;->a:Ljava/lang/reflect/Field;

    .line 67
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_16} :catch_2c

    .line 71
    :goto_16
    sput-boolean v2, Landroid/support/v4/view/ViewCompatBase;->b:Z

    .line 74
    :cond_18
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2a

    .line 76
    :try_start_1c
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_27} :catch_29

    move-result v0

    .line 83
    :goto_28
    return v0

    .line 77
    :catch_29
    move-exception v0

    .line 83
    :cond_2a
    const/4 v0, 0x0

    goto :goto_28

    .line 68
    :catch_2c
    move-exception v0

    goto :goto_16
.end method

.method static e(Landroid/view/View;)I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 87
    sget-boolean v0, Landroid/support/v4/view/ViewCompatBase;->d:Z

    if-nez v0, :cond_18

    .line 89
    :try_start_5
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "mMinHeight"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/ViewCompatBase;->c:Ljava/lang/reflect/Field;

    .line 90
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->c:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_16} :catch_2c

    .line 94
    :goto_16
    sput-boolean v2, Landroid/support/v4/view/ViewCompatBase;->d:Z

    .line 97
    :cond_18
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2a

    .line 99
    :try_start_1c
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_27} :catch_29

    move-result v0

    .line 106
    :goto_28
    return v0

    .line 100
    :catch_29
    move-exception v0

    .line 106
    :cond_2a
    const/4 v0, 0x0

    goto :goto_28

    .line 91
    :catch_2c
    move-exception v0

    goto :goto_16
.end method

.method static f(Landroid/view/View;)Z
    .registers 2

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
