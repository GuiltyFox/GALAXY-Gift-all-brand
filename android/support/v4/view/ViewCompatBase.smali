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
    .line 39
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    .line 40
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
    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 118
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 120
    if-eqz p1, :cond_2a

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 123
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2b

    .line 124
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 125
    check-cast v0, Landroid/view/View;

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v1, v2

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v1, v6

    add-int/2addr v1, v2

    .line 125
    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/view/View;->invalidate(IIII)V

    .line 134
    :cond_2a
    :goto_2a
    return-void

    .line 131
    :cond_2b
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2a
.end method

.method static a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 3

    .prologue
    .line 45
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_9

    .line 46
    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    invoke-interface {p0, p1}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 48
    :cond_9
    return-void
.end method

.method static a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .prologue
    .line 57
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_9

    .line 58
    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    invoke-interface {p0, p1}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 60
    :cond_9
    return-void
.end method

.method static b(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 51
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    .line 52
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
    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 138
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 140
    if-eqz p1, :cond_2a

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 143
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2b

    .line 144
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 145
    check-cast v0, Landroid/view/View;

    sub-int v3, v1, v2

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v1, v5

    add-int/2addr v1, v2

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 145
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->invalidate(IIII)V

    .line 154
    :cond_2a
    :goto_2a
    return-void

    .line 151
    :cond_2b
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2a
.end method

.method static c(Landroid/view/View;)Z
    .registers 2

    .prologue
    .line 63
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

    .line 67
    sget-boolean v0, Landroid/support/v4/view/ViewCompatBase;->b:Z

    if-nez v0, :cond_18

    .line 69
    :try_start_5
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "mMinWidth"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/ViewCompatBase;->a:Ljava/lang/reflect/Field;

    .line 70
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_16} :catch_2c

    .line 74
    :goto_16
    sput-boolean v2, Landroid/support/v4/view/ViewCompatBase;->b:Z

    .line 77
    :cond_18
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2a

    .line 79
    :try_start_1c
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_27} :catch_29

    move-result v0

    .line 86
    :goto_28
    return v0

    .line 80
    :catch_29
    move-exception v0

    .line 86
    :cond_2a
    const/4 v0, 0x0

    goto :goto_28

    .line 71
    :catch_2c
    move-exception v0

    goto :goto_16
.end method

.method static e(Landroid/view/View;)I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 90
    sget-boolean v0, Landroid/support/v4/view/ViewCompatBase;->d:Z

    if-nez v0, :cond_18

    .line 92
    :try_start_5
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "mMinHeight"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/ViewCompatBase;->c:Ljava/lang/reflect/Field;

    .line 93
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->c:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_16} :catch_2c

    .line 97
    :goto_16
    sput-boolean v2, Landroid/support/v4/view/ViewCompatBase;->d:Z

    .line 100
    :cond_18
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2a

    .line 102
    :try_start_1c
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_27} :catch_29

    move-result v0

    .line 109
    :goto_28
    return v0

    .line 103
    :catch_29
    move-exception v0

    .line 109
    :cond_2a
    const/4 v0, 0x0

    goto :goto_28

    .line 94
    :catch_2c
    move-exception v0

    goto :goto_16
.end method

.method static f(Landroid/view/View;)Z
    .registers 2

    .prologue
    .line 113
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

.method static g(Landroid/view/View;)Landroid/view/Display;
    .registers 3

    .prologue
    .line 157
    invoke-static {p0}, Landroid/support/v4/view/ViewCompatBase;->f(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 160
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 162
    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method
