.class final Lcom/samsung/privilege/util/DialogOTPUtil$3;
.super Ljava/lang/Object;
.source "DialogOTPUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogOTPUtil;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/widget/EditText;

.field final synthetic f:Landroid/app/Dialog;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Landroid/widget/EditText;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 117
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->c:Landroid/os/Handler;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->e:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->f:Landroid/app/Dialog;

    iput-object p7, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 136
    :goto_13
    return-void

    .line 123
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

    .line 124
    const-string/jumbo v0, "Please enter valid OTP number!"

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogOTPUtil;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_13

    .line 128
    :cond_32
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->b:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 129
    invoke-static {}, Lcom/samsung/privilege/util/DialogOTPUtil;->a()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 131
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->c:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->e:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/privilege/util/DialogOTPUtil;->a()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->a:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/samsung/privilege/util/DialogOTPUtil;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 135
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->g:Ljava/lang/String;

    const-string/jumbo v1, "Click Activate"

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogOTPUtil$3;->h:Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_13
.end method
