.class Landroid/support/design/widget/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DrawableUtils"

.field private static sDrawableContainerStateField:Ljava/lang/reflect/Field;

.field private static sDrawableContainerStateFieldFetched:Z

.field private static sSetConstantStateMethod:Ljava/lang/reflect/Method;

.field private static sSetConstantStateMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setContainerConstantState(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z
    .registers 4
    .param p0, "drawable"    # Landroid/graphics/drawable/DrawableContainer;
    .param p1, "constantState"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .prologue
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_b

    .line 46
    invoke-static {p0, p1}, Landroid/support/design/widget/DrawableUtils;->setContainerConstantStateV9(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v0

    .line 49
    :goto_a
    return v0

    :cond_b
    invoke-static {p0, p1}, Landroid/support/design/widget/DrawableUtils;->setContainerConstantStateV7(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v0

    goto :goto_a
.end method

.method private static setContainerConstantStateV7(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z
    .registers 6
    .param p0, "drawable"    # Landroid/graphics/drawable/DrawableContainer;
    .param p1, "constantState"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .prologue
    const/4 v1, 0x1

    .line 78
    sget-boolean v2, Landroid/support/design/widget/DrawableUtils;->sDrawableContainerStateFieldFetched:Z

    if-nez v2, :cond_18

    .line 80
    :try_start_5
    const-class v2, Landroid/graphics/drawable/DrawableContainer;

    const-string/jumbo v3, "mDrawableContainerStateField"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/design/widget/DrawableUtils;->sDrawableContainerStateField:Ljava/lang/reflect/Field;

    .line 82
    sget-object v2, Landroid/support/design/widget/DrawableUtils;->sDrawableContainerStateField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_16} :catch_22

    .line 86
    :goto_16
    sput-boolean v1, Landroid/support/design/widget/DrawableUtils;->sDrawableContainerStateFieldFetched:Z

    .line 88
    :cond_18
    sget-object v2, Landroid/support/design/widget/DrawableUtils;->sDrawableContainerStateField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_37

    .line 90
    :try_start_1c
    sget-object v2, Landroid/support/design/widget/DrawableUtils;->sDrawableContainerStateField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_2d

    .line 96
    :goto_21
    return v1

    .line 83
    :catch_22
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v2, "DrawableUtils"

    const-string/jumbo v3, "Could not fetch mDrawableContainerStateField. Oh well."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 92
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2d
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DrawableUtils"

    const-string/jumbo v2, "Could not set mDrawableContainerStateField. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_37
    const/4 v1, 0x0

    goto :goto_21
.end method

.method private static setContainerConstantStateV9(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z
    .registers 10
    .param p0, "drawable"    # Landroid/graphics/drawable/DrawableContainer;
    .param p1, "constantState"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 55
    sget-boolean v3, Landroid/support/design/widget/DrawableUtils;->sSetConstantStateMethodFetched:Z

    if-nez v3, :cond_21

    .line 57
    :try_start_6
    const-class v3, Landroid/graphics/drawable/DrawableContainer;

    const-string/jumbo v4, "setConstantState"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/support/design/widget/DrawableUtils;->sSetConstantStateMethod:Ljava/lang/reflect/Method;

    .line 59
    sget-object v3, Landroid/support/design/widget/DrawableUtils;->sSetConstantStateMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_1f} :catch_31

    .line 63
    :goto_1f
    sput-boolean v1, Landroid/support/design/widget/DrawableUtils;->sSetConstantStateMethodFetched:Z

    .line 65
    :cond_21
    sget-object v3, Landroid/support/design/widget/DrawableUtils;->sSetConstantStateMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_46

    .line 67
    :try_start_25
    sget-object v3, Landroid/support/design/widget/DrawableUtils;->sSetConstantStateMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_30} :catch_3c

    .line 73
    :goto_30
    return v1

    .line 60
    :catch_31
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v3, "DrawableUtils"

    const-string/jumbo v4, "Could not fetch setConstantState(). Oh well."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 69
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3c
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DrawableUtils"

    const-string/jumbo v3, "Could not invoke setConstantState(). Oh well."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_46
    move v1, v2

    .line 73
    goto :goto_30
.end method
