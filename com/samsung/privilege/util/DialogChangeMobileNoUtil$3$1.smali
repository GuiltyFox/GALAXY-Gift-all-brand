.class Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3$1;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "DialogChangeMobileNoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3;)V
    .registers 2

    .prologue
    .line 119
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3$1;->a:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doUpdate|onFailure)response_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 137
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3$1;->a:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3;->b:Landroid/content/Context;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 138
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 122
    invoke-static {}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doUpdate|onComplete)response_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 126
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3$1;->a:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3$1;->a:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3$1;->a:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3$1;->a:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3;

    iget-object v3, v3, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3$1;->a:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3;

    iget-object v4, v4, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3$1;->a:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3;

    iget-object v5, v5, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3$1;->a:Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3;

    iget-object v6, v6, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$3;->h:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method
