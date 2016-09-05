.class Lcom/samsung/privilege/activity/AddMoneyActivity$1;
.super Ljava/lang/Object;
.source "AddMoneyActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AddMoneyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/AddMoneyActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AddMoneyActivity;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$1;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 79
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1e

    .line 80
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$1;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/AddMoneyActivity;->doConfirm(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$1;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/AddMoneyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 83
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 85
    const/4 v0, 0x1

    .line 87
    :goto_1d
    return v0

    :cond_1e
    move v0, v1

    goto :goto_1d
.end method
