.class final Lcom/samsung/privilege/util/DialogLoginGift$10;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift;->b(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Landroid/os/Handler;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Landroid/widget/EditText;

.field final synthetic g:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .registers 8

    .prologue
    .line 486
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$10;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$10;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogLoginGift$10;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogLoginGift$10;->d:Landroid/os/Handler;

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogLoginGift$10;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/privilege/util/DialogLoginGift$10;->f:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/samsung/privilege/util/DialogLoginGift$10;->g:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .prologue
    .line 488
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$10;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 501
    :goto_13
    return-void

    .line 490
    :cond_14
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$10;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_30

    .line 491
    const-string/jumbo v0, "Please enter valid OTP number!"

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$10;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$10;->d:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_13

    .line 495
    :cond_30
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$10;->c:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 496
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$10;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 498
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$10;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$10;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$10;->d:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$10;->f:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/util/DialogLoginGift$10;->b:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/privilege/util/DialogLoginGift$10;->a:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$10;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_13
.end method
