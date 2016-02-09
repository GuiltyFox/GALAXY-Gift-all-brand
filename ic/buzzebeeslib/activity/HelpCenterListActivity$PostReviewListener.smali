.class Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "HelpCenterListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostReviewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;)V
    .registers 2

    .prologue
    .line 1835
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;
    .registers 2

    .prologue
    .line 1835
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 1838
    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {v3}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$20(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(PostReviewListener|onComplete)response={"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    const/16 v3, 0xc8

    if-ne p1, v3, :cond_9e

    .line 1840
    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v3}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$6(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener$1;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener$1;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1852
    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    iget-object v4, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    sget v5, Lic/buzzebeeslib/R$string;->post_success:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->showToast(Ljava/lang/String;)V

    .line 1857
    if-eqz p2, :cond_5c

    :try_start_43
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 1858
    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->doRefresh(Landroid/view/View;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_51} :catch_80

    .line 1860
    const/4 v2, 0x0

    .line 1861
    .local v2, "points":I
    :try_start_52
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_52 .. :try_end_57} :catch_66
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_57} :catch_80

    .line 1864
    .local v1, "jsonRoot":Lorg/json/JSONObject;
    :try_start_57
    const-string v3, "buzzebees"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5c} :catch_ac
    .catch Lorg/json/JSONException; {:try_start_57 .. :try_end_5c} :catch_66

    .line 1890
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v2    # "points":I
    :cond_5c
    :goto_5c
    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$24(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1891
    return-void

    .line 1879
    .restart local v2    # "points":I
    :catch_66
    move-exception v0

    .line 1880
    .local v0, "e":Lorg/json/JSONException;
    :try_start_67
    const-string v3, "buzzebees.wall4"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(JSONException|ProcessActionLikeListener|onComplete):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_7f} :catch_80

    goto :goto_5c

    .line 1883
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "points":I
    :catch_80
    move-exception v0

    .line 1884
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {v3}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$20(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error while back from review post:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 1887
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9e
    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    iget-object v4, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    sget v5, Lic/buzzebeeslib/R$string;->post_error:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->showToast(Ljava/lang/String;)V

    goto :goto_5c

    .line 1876
    .restart local v1    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v2    # "points":I
    :catch_ac
    move-exception v3

    goto :goto_5c
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/io/FileNotFoundException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1895
    invoke-super {p0, p1, p2}, Lic/buzzebeeslib/util/http/HttpRQListener;->onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V

    .line 1896
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$20(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(onFileNotFoundException|PostReviewListener):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    sget v2, Lic/buzzebeeslib/R$string;->post_error:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->showToast(Ljava/lang/String;)V

    .line 1898
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$24(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1899
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1903
    invoke-super {p0, p1, p2}, Lic/buzzebeeslib/util/http/HttpRQListener;->onIOException(Ljava/io/IOException;Ljava/lang/Object;)V

    .line 1904
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$20(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(onIOException|PostReviewListener):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    sget v2, Lic/buzzebeeslib/R$string;->post_error:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->showToast(Ljava/lang/String;)V

    .line 1906
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$24(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1907
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/net/MalformedURLException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1911
    invoke-super {p0, p1, p2}, Lic/buzzebeeslib/util/http/HttpRQListener;->onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    .line 1912
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$20(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(onMalformedURLException|PostReviewListener):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    sget v2, Lic/buzzebeeslib/R$string;->post_error:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->showToast(Ljava/lang/String;)V

    .line 1914
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$PostReviewListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$24(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1915
    return-void
.end method
