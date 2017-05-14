.class Landroid/support/v7/view/menu/CascadingMenuPopup$1;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/CascadingMenuPopup;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/view/menu/CascadingMenuPopup;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/CascadingMenuPopup;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$1;->a:Landroid/support/v7/view/menu/CascadingMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$1;->a:Landroid/support/v7/view/menu/CascadingMenuPopup;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$1;->a:Landroid/support/v7/view/menu/CascadingMenuPopup;

    invoke-static {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->a(Landroid/support/v7/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3c

    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$1;->a:Landroid/support/v7/view/menu/CascadingMenuPopup;

    .line 101
    invoke-static {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->a(Landroid/support/v7/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/MenuPopupWindow;->isModal()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 102
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$1;->a:Landroid/support/v7/view/menu/CascadingMenuPopup;

    invoke-static {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->b(Landroid/support/v7/view/menu/CascadingMenuPopup;)Landroid/view/View;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 104
    :cond_37
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$1;->a:Landroid/support/v7/view/menu/CascadingMenuPopup;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->dismiss()V

    .line 112
    :cond_3c
    return-void

    .line 107
    :cond_3d
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$1;->a:Landroid/support/v7/view/menu/CascadingMenuPopup;

    invoke-static {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->a(Landroid/support/v7/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 108
    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->a:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    goto :goto_47
.end method
