.class final Lcom/samsung/privilege/util/DialogOTPUtil$3;
.super Ljava/lang/Object;
.source "DialogOTPUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogOTPUtil;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Landroid/widget/EditText;

.field final synthetic g:Z

.field final synthetic h:Landroid/app/Dialog;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;ZLandroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 124
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->c:Landroid/os/Handler;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->f:Landroid/widget/EditText;

    iput-boolean p7, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->g:Z

    iput-object p8, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->h:Landroid/app/Dialog;

    iput-object p9, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->j:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 143
    :goto_13
    return-void

    .line 130
    :cond_14
    invoke-static {}, Lcom/samsung/privilege/util/DialogOTPUtil;->a()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_32

    .line 131
    const-string/jumbo v0, "Please enter valid OTP number!"

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogOTPUtil;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_13

    .line 135
    :cond_32
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->b:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 136
    invoke-static {}, Lcom/samsung/privilege/util/DialogOTPUtil;->a()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 138
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->c:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->e:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->f:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/samsung/privilege/util/DialogOTPUtil;->a()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->a:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->g:Z

    invoke-static/range {v0 .. v8}, Lcom/samsung/privilege/util/DialogOTPUtil;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 140
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 142
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->i:Ljava/lang/String;

    const-string/jumbo v1, "Click Activate"

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->j:Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_13
.end method
