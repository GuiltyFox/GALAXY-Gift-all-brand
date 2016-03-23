.class public Lcom/bzbs/lib/survey/util/ListenerUtil$FacebookDialogListener;
.super Ljava/lang/Object;
.source "ListenerUtil.java"

# interfaces
.implements Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/util/ListenerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FacebookDialogListener"
.end annotation


# instance fields
.field gActivityContext:Landroid/content/Context;

.field gHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .param p1, "objActivityContext"    # Landroid/content/Context;
    .param p2, "objHandler"    # Landroid/os/Handler;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/bzbs/lib/survey/util/ListenerUtil$FacebookDialogListener;->gHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    .prologue
    .line 90
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 48
    const-string/jumbo v6, "ListenerUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(FacebookDialogListener|onComplete)values:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string/jumbo v4, ""

    .line 51
    .local v4, "post_id":Ljava/lang/String;
    if-eqz p1, :cond_4f

    .line 52
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 53
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 54
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2b
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "post_id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 57
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2b

    .line 63
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4f
    const-string/jumbo v6, "ListenerUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "post_id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    if-eqz v4, :cond_e7

    const-string/jumbo v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e7

    .line 66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v3, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/lib/survey/bean/InputItem;>;"
    new-instance v6, Lcom/bzbs/lib/survey/bean/InputItem;

    const-string/jumbo v7, "post_id"

    invoke-direct {v6, v7, v4}, Lcom/bzbs/lib/survey/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v6, Lcom/bzbs/lib/survey/bean/InputItem;

    const-string/jumbo v7, "access_token"

    iget-object v8, p0, Lcom/bzbs/lib/survey/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/bzbs/lib/survey/LibUserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/bzbs/lib/survey/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/bzbs/lib/survey/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "api/facebook/dialog/feed?token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/bzbs/lib/survey/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/bzbs/lib/survey/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "strUrl":Ljava/lang/String;
    const-string/jumbo v6, "ListenerUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(call for point)post_id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "url:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v6, Lcom/bzbs/lib/survey/util/ListenerUtil$SetDataToBuzzeBeesListener;

    iget-object v7, p0, Lcom/bzbs/lib/survey/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/bzbs/lib/survey/util/ListenerUtil$FacebookDialogListener;->gHandler:Landroid/os/Handler;

    invoke-direct {v6, v7, v8}, Lcom/bzbs/lib/survey/util/ListenerUtil$SetDataToBuzzeBeesListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v7, 0x0

    invoke-static {v5, v3, v6, v7}, Lcom/bzbs/lib/survey/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/bzbs/lib/survey/util/http/RQListener;Ljava/lang/Object;)V

    .line 73
    .end local v3    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/lib/survey/bean/InputItem;>;"
    .end local v5    # "strUrl":Ljava/lang/String;
    :cond_e7
    return-void
.end method

.method public onError(Lcom/bzbs/lib/survey/util/fb/DialogError;)V
    .registers 6
    .param p1, "e"    # Lcom/bzbs/lib/survey/util/fb/DialogError;

    .prologue
    .line 83
    const-string/jumbo v0, "ListenerUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(FacebookDialogListener|onError):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bzbs/lib/survey/util/fb/DialogError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/ListenerUtil$FacebookDialogListener;->gHandler:Landroid/os/Handler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bzbs/lib/survey/util/fb/DialogError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/bzbs/lib/survey/util/ListenerUtil;->showToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/bzbs/lib/survey/util/ListenerUtil;->access$000(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onFacebookError(Lcom/bzbs/lib/survey/util/fb/FacebookError;)V
    .registers 6
    .param p1, "e"    # Lcom/bzbs/lib/survey/util/fb/FacebookError;

    .prologue
    .line 77
    const-string/jumbo v0, "ListenerUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(FacebookDialogListener|onFacebookError):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bzbs/lib/survey/util/fb/FacebookError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/ListenerUtil$FacebookDialogListener;->gHandler:Landroid/os/Handler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bzbs/lib/survey/util/fb/FacebookError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/bzbs/lib/survey/util/ListenerUtil;->showToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/bzbs/lib/survey/util/ListenerUtil;->access$000(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 79
    return-void
.end method
