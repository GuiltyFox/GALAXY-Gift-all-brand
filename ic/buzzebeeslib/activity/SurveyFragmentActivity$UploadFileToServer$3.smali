.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$3;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->uploadFile()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;

.field private final synthetic val$response_json:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$3;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;

    iput-object p2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$3;->val$response_json:Ljava/lang/String;

    .line 2937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 2939
    const-string v2, ""

    .line 2941
    .local v2, "imgName":Ljava/lang/String;
    :try_start_2
    new-instance v3, Lorg/json/JSONArray;

    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$3;->val$response_json:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2943
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v1, v5, :cond_2c

    .line 2951
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$3;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->access$4(Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->tvImageUrl:Ljava/util/List;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$17(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$3;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v6}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->access$4(Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v6

    iget v6, v6, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->currentView:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2b} :catch_6d

    .line 2955
    .end local v1    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :goto_2b
    return-void

    .line 2945
    .restart local v1    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_2c
    :try_start_2c
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 2946
    .local v4, "json_campaign":Lorg/json/JSONObject;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Lic/buzzebeeslib/bean/ImageUrl;

    invoke-direct {v6, v4}, Lic/buzzebeeslib/bean/ImageUrl;-><init>(Lorg/json/JSONObject;)V

    iget-object v6, v6, Lic/buzzebeeslib/bean/ImageUrl;->imageUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_47} :catch_4b

    move-result-object v2

    .line 2943
    .end local v4    # "json_campaign":Lorg/json/JSONObject;
    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2947
    :catch_4b
    move-exception v0

    .line 2948
    .local v0, "e":Lorg/json/JSONException;
    :try_start_4c
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$3;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->access$4(Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$32(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(GetImageUrl|onComplete|for|JSONException):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_6c} :catch_6d

    goto :goto_48

    .line 2952
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :catch_6d
    move-exception v0

    .line 2953
    .restart local v0    # "e":Lorg/json/JSONException;
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$3;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->access$4(Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$32(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(GetImageUrl|onComplete|JSONException):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method
