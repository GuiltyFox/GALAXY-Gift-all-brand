.class Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;
.super Ljava/lang/Object;
.source "PopupWindowCompat.java"

# interfaces
.implements Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/PopupWindow;I)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    .line 78
    sget-boolean v0, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;->b:Z

    if-nez v0, :cond_20

    .line 80
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

    sput-object v0, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;->a:Ljava/lang/reflect/Method;

    .line 82
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1e} :catch_36

    .line 86
    :goto_1e
    sput-boolean v5, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;->b:Z

    .line 89
    :cond_20
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_33

    .line 91
    :try_start_24
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_33} :catch_34

    .line 96
    :cond_33
    :goto_33
    return-void

    .line 92
    :catch_34
    move-exception v0

    goto :goto_33

    .line 83
    :catch_36
    move-exception v0

    goto :goto_1e
.end method

.method public a(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .registers 8

    .prologue
    .line 56
    .line 57
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->h(Landroid/view/View;)I

    move-result v0

    .line 56
    invoke-static {p5, v0}, Landroid/support/v4/view/GravityCompat;->a(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 58
    const/4 v1, 0x5

    if-ne v0, v1, :cond_17

    .line 61
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr p3, v0

    .line 63
    :cond_17
    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 64
    return-void
.end method

.method public a(Landroid/widget/PopupWindow;Z)V
    .registers 3

    .prologue
    .line 69
    return-void
.end method
