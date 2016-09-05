.class Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;
.super Ljava/lang/Object;
.source "DrawableCompatJellybeanMr1.java"


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Z

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Z


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;)I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 63
    sget-boolean v0, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->d:Z

    if-nez v0, :cond_1b

    .line 65
    :try_start_5
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string/jumbo v1, "getLayoutDirection"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->c:Ljava/lang/reflect/Method;

    .line 66
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_19} :catch_2f

    .line 70
    :goto_19
    sput-boolean v3, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->d:Z

    .line 73
    :cond_1b
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_47

    .line 75
    :try_start_1f
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2d} :catch_3a

    move-result v0

    .line 81
    :goto_2e
    return v0

    .line 67
    :catch_2f
    move-exception v0

    .line 68
    const-string/jumbo v1, "DrawableCompatJellybeanMr1"

    const-string/jumbo v2, "Failed to retrieve getLayoutDirection() method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 76
    :catch_3a
    move-exception v0

    .line 77
    const-string/jumbo v1, "DrawableCompatJellybeanMr1"

    const-string/jumbo v2, "Failed to invoke getLayoutDirection() via reflection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    const/4 v0, 0x0

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->c:Ljava/lang/reflect/Method;

    .line 81
    :cond_47
    const/4 v0, -0x1

    goto :goto_2e
.end method

.method public static a(Landroid/graphics/drawable/Drawable;I)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 41
    sget-boolean v0, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->b:Z

    if-nez v0, :cond_20

    .line 43
    :try_start_5
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string/jumbo v1, "setLayoutDirection"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->a:Ljava/lang/reflect/Method;

    .line 45
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1e} :catch_34

    .line 49
    :goto_1e
    sput-boolean v5, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->b:Z

    .line 52
    :cond_20
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_33

    .line 54
    :try_start_24
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_33} :catch_3f

    .line 60
    :cond_33
    :goto_33
    return-void

    .line 46
    :catch_34
    move-exception v0

    .line 47
    const-string/jumbo v1, "DrawableCompatJellybeanMr1"

    const-string/jumbo v2, "Failed to retrieve setLayoutDirection(int) method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 55
    :catch_3f
    move-exception v0

    .line 56
    const-string/jumbo v1, "DrawableCompatJellybeanMr1"

    const-string/jumbo v2, "Failed to invoke setLayoutDirection(int) via reflection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    const/4 v0, 0x0

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->a:Ljava/lang/reflect/Method;

    goto :goto_33
.end method
