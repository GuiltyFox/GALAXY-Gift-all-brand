.class Landroid/support/v7/widget/ListPopupWindow$1;
.super Landroid/support/v7/widget/ForwardingListener;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ListPopupWindow;->createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1108
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow$1;->a:Landroid/support/v7/widget/ListPopupWindow;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/widget/ListPopupWindow;
    .registers 2

    .prologue
    .line 1111
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$1;->a:Landroid/support/v7/widget/ListPopupWindow;

    return-object v0
.end method

.method public synthetic getPopup()Landroid/support/v7/view/menu/ShowableListMenu;
    .registers 2

    .prologue
    .line 1108
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow$1;->a()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method
