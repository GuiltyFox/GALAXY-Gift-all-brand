.class final Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;
.super Ljava/lang/Object;
.source "DialogChangeMobileNoUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Landroid/widget/EditText;

.field final synthetic e:Landroid/widget/EditText;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Landroid/app/Dialog;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/os/Handler;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 259
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->c:Landroid/os/Handler;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->d:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->e:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->g:Landroid/app/Dialog;

    iput-object p8, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->i:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    .prologue
    .line 261
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 286
    :goto_13
    return-void

    .line 265
    :cond_14
    invoke-static {}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->c()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_38

    .line 266
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->b:Landroid/content/Context;

    const v1, 0x7f090108

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_13

    .line 270
    :cond_38
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_5b

    .line 271
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->b:Landroid/content/Context;

    const v1, 0x7f090109

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_13

    .line 275
    :cond_5b
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    if-ge v0, v1, :cond_7e

    .line 276
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->b:Landroid/content/Context;

    const v1, 0x7f09011c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_13

    .line 280
    :cond_7e
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->b:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 281
    invoke-static {}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->c()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 283
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->c:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->d:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->e:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->c()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->a:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->g:Landroid/app/Dialog;

    invoke-static/range {v0 .. v8}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V

    .line 285
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->h:Ljava/lang/String;

    const-string/jumbo v1, "Click Activate"

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$9;->i:Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_13
.end method
