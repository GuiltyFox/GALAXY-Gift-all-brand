.class final Lcom/samsung/privilege/util/DialogSearch$1;
.super Ljava/lang/Object;
.source "DialogSearch.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogSearch;->a(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/EditText;)V
    .registers 4

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogSearch$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogSearch$1;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogSearch$1;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 99
    const/4 v0, 0x3

    if-ne p2, v0, :cond_57

    .line 100
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSearch$1;->a:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 101
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_25

    .line 102
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSearch$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogSearch$1;->a:Landroid/content/Context;

    const v3, 0x7f090251

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 115
    :goto_24
    return v0

    .line 106
    :cond_25
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSearch$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogSearch$1;->b:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogSearch$1;->c:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/privilege/util/DialogSearch;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 108
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSearch$1;->a:Landroid/content/Context;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 109
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 111
    const-string/jumbo v0, "Search"

    const-string/jumbo v1, "Click Search"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x1

    goto :goto_24

    :cond_57
    move v0, v1

    .line 115
    goto :goto_24
.end method
