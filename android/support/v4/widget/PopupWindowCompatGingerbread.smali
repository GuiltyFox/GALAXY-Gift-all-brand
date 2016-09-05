.class Landroid/support/v4/widget/PopupWindowCompatGingerbread;
.super Ljava/lang/Object;
.source "PopupWindowCompatGingerbread.java"


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Z


# direct methods
.method static a(Landroid/widget/PopupWindow;I)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 34
    sget-boolean v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->b:Z

    if-nez v0, :cond_20

    .line 36
    :try_start_5
    const-class v0, Landroid/widget/PopupWindow;

    const-string/jumbo v1, "setWindowLayoutType"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->a:Ljava/lang/reflect/Method;

    .line 38
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1e} :catch_36

    .line 42
    :goto_1e
    sput-boolean v5, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->b:Z

    .line 45
    :cond_20
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_33

    .line 47
    :try_start_24
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_33} :catch_34

    .line 52
    :cond_33
    :goto_33
    return-void

    .line 48
    :catch_34
    move-exception v0

    goto :goto_33

    .line 39
    :catch_36
    move-exception v0

    goto :goto_1e
.end method
