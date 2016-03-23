.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$3;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->uploadFile()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

.field final synthetic val$response_json:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

    .prologue
    .line 4031
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$3;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$3;->val$response_json:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 4033
    const-string/jumbo v2, ""

    .line 4035
    .local v2, "imgName":Ljava/lang/String;
    :try_start_3
    new-instance v3, Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$3;->val$response_json:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 4037
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_e} :catch_55

    move-result v5

    if-ge v1, v5, :cond_7a

    .line 4039
    :try_start_11
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 4040
    .local v4, "json_campaign":Lorg/json/JSONObject;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Lcom/bzbs/lib/survey/bean/ImageUrl;

    invoke-direct {v6, v4}, Lcom/bzbs/lib/survey/bean/ImageUrl;-><init>(Lorg/json/JSONObject;)V

    iget-object v6, v6, Lcom/bzbs/lib/survey/bean/ImageUrl;->imageUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_2c} :catch_30

    move-result-object v2

    .line 4037
    .end local v4    # "json_campaign":Lorg/json/JSONObject;
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 4041
    :catch_30
    move-exception v0

    .line 4042
    .local v0, "e":Lorg/json/JSONException;
    :try_start_31
    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$3;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$4200(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(GetImageUrl|onComplete|for|JSONException):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_54} :catch_55

    goto :goto_2d

    .line 4046
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :catch_55
    move-exception v0

    .line 4047
    .restart local v0    # "e":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$3;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$4200(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(GetImageUrl|onComplete|JSONException):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4049
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_79
    return-void

    .line 4045
    .restart local v1    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_7a
    :try_start_7a
    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$3;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->tvImageUrl:Ljava/util/List;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$2400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$3;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

    iget-object v6, v6, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget v6, v6, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_91
    .catch Lorg/json/JSONException; {:try_start_7a .. :try_end_91} :catch_55

    goto :goto_79
.end method
