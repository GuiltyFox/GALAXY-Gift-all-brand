.class Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 252
    :try_start_0
    iget-object v4, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/RegisterActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;
    invoke-static {v5}, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/RegisterActivity;

    move-result-object v5

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity;->edtFName:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/samsung/privilege/activity/RegisterActivity;->access$2(Lcom/samsung/privilege/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/UserLogin;->SetFirstName(Landroid/content/Context;Ljava/lang/String;)Z

    .line 253
    iget-object v4, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/RegisterActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;
    invoke-static {v5}, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/RegisterActivity;

    move-result-object v5

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity;->edtLName:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/samsung/privilege/activity/RegisterActivity;->access$3(Lcom/samsung/privilege/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/UserLogin;->SetLastName(Landroid/content/Context;Ljava/lang/String;)Z

    .line 254
    iget-object v4, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/RegisterActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;
    invoke-static {v5}, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/RegisterActivity;

    move-result-object v5

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity;->edtBD:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/samsung/privilege/activity/RegisterActivity;->access$0(Lcom/samsung/privilege/activity/RegisterActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/UserLogin;->SetBirthday(Landroid/content/Context;Ljava/lang/String;)Z

    .line 255
    iget-object v4, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/RegisterActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;
    invoke-static {v5}, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/RegisterActivity;

    move-result-object v5

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity;->strGender:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/privilege/activity/RegisterActivity;->access$4(Lcom/samsung/privilege/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/UserLogin;->SetGender(Landroid/content/Context;Ljava/lang/String;)Z

    .line 256
    iget-object v4, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/RegisterActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;
    invoke-static {v5}, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/RegisterActivity;

    move-result-object v5

    const v6, 0x7f0a00e3

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/RegisterActivity;->showToast(Ljava/lang/String;)V

    .line 257
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/RegisterActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 258
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "msg_newbie"

    iget-object v5, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;
    invoke-static {v5}, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/RegisterActivity;

    move-result-object v5

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity;->paramsData:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/privilege/activity/RegisterActivity;->access$5(Lcom/samsung/privilege/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    iget-object v4, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/RegisterActivity;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/privilege/activity/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 260
    iget-object v4, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/RegisterActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/RegisterActivity;->finish()V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_bc} :catch_c4

    .line 275
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_bc
    :goto_bc
    const-string v4, "Register"

    const-string v5, "(AsyncHttpResponseHandler):gPbLoadingProfile.setVisibility(View.GONE);"

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void

    .line 261
    :catch_c4
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 264
    .local v0, "blnIsAdmin":Z
    :try_start_c6
    iget-object v4, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/RegisterActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_d3} :catch_f6

    move-result v4

    if-eqz v4, :cond_d7

    .line 265
    const/4 v0, 0x1

    .line 270
    :cond_d7
    :goto_d7
    if-eqz v0, :cond_bc

    .line 271
    iget-object v4, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/RegisterActivity;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/RegisterActivity;->showToast(Ljava/lang/String;)V

    goto :goto_bc

    .line 267
    :catch_f6
    move-exception v2

    .line 268
    .local v2, "e2":Ljava/lang/Exception;
    const-string v4, "Register"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception := "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d7
.end method
