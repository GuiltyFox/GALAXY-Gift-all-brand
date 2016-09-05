.class public Lcom/bzbs/marketplace/util/KeyboardStatus;
.super Ljava/lang/Object;
.source "KeyboardStatus.java"


# direct methods
.method public static a(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 26
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 29
    :cond_1b
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 13
    if-eqz p0, :cond_13

    .line 14
    const-string/jumbo v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 18
    :cond_13
    invoke-static {p1}, Lcom/bzbs/marketplace/util/KeyboardStatus;->a(Landroid/app/Activity;)V

    .line 19
    return-void
.end method
