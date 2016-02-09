.class public Lic/buzzebeeslib/util/ListenerUtil$FacebookDialogListener;
.super Ljava/lang/Object;
.source "ListenerUtil.java"

# interfaces
.implements Lic/buzzebeeslib/util/fb/FacebookDialog$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/util/ListenerUtil;
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
    iput-object p1, p0, Lic/buzzebeeslib/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lic/buzzebeeslib/util/ListenerUtil$FacebookDialogListener;->gHandler:Landroid/os/Handler;

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
    const-string v6, "ListenerUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(FacebookDialogListener|onComplete)values:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v4, ""

    .line 51
    .local v4, "post_id":Ljava/lang/String;
    if-eqz p1, :cond_2a

    .line 52
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 53
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 54
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_b2

    .line 63
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2a
    const-string v6, "ListenerUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "post_id:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    if-eqz v4, :cond_b1

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b1

    .line 66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v3, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    new-instance v6, Lic/buzzebeeslib/bean/InputItem;

    const-string v7, "post_id"

    invoke-direct {v6, v7, v4}, Lic/buzzebeeslib/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v6, Lic/buzzebeeslib/bean/InputItem;

    const-string v7, "access_token"

    iget-object v8, p0, Lic/buzzebeeslib/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    invoke-static {v8}, Lic/buzzebeeslib/LibUserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lic/buzzebeeslib/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "api/facebook/dialog/feed?token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lic/buzzebeeslib/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "strUrl":Ljava/lang/String;
    const-string v6, "ListenerUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(call for point)post_id:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "url:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v6, Lic/buzzebeeslib/util/ListenerUtil$SetDataToBuzzeBeesListener;

    iget-object v7, p0, Lic/buzzebeeslib/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    iget-object v8, p0, Lic/buzzebeeslib/util/ListenerUtil$FacebookDialogListener;->gHandler:Landroid/os/Handler;

    invoke-direct {v6, v7, v8}, Lic/buzzebeeslib/util/ListenerUtil$SetDataToBuzzeBeesListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v7, 0x0

    invoke-static {v5, v3, v6, v7}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 73
    .end local v3    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    .end local v5    # "strUrl":Ljava/lang/String;
    :cond_b1
    return-void

    .line 55
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "post_id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 57
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_24
.end method

.method public onError(Lic/buzzebeeslib/util/fb/DialogError;)V
    .registers 6
    .param p1, "e"    # Lic/buzzebeeslib/util/fb/DialogError;

    .prologue
    .line 83
    const-string v0, "ListenerUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(FacebookDialogListener|onError):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lic/buzzebeeslib/util/fb/DialogError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lic/buzzebeeslib/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    iget-object v1, p0, Lic/buzzebeeslib/util/ListenerUtil$FacebookDialogListener;->gHandler:Landroid/os/Handler;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lic/buzzebeeslib/util/fb/DialogError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lic/buzzebeeslib/util/ListenerUtil;->showToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/ListenerUtil;->access$0(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onFacebookError(Lic/buzzebeeslib/util/fb/FacebookError;)V
    .registers 6
    .param p1, "e"    # Lic/buzzebeeslib/util/fb/FacebookError;

    .prologue
    .line 77
    const-string v0, "ListenerUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(FacebookDialogListener|onFacebookError):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lic/buzzebeeslib/util/fb/FacebookError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lic/buzzebeeslib/util/ListenerUtil$FacebookDialogListener;->gActivityContext:Landroid/content/Context;

    iget-object v1, p0, Lic/buzzebeeslib/util/ListenerUtil$FacebookDialogListener;->gHandler:Landroid/os/Handler;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lic/buzzebeeslib/util/fb/FacebookError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lic/buzzebeeslib/util/ListenerUtil;->showToast(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/ListenerUtil;->access$0(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 79
    return-void
.end method
