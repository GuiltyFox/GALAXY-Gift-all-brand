.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$3;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->a()Ljava/lang/String;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 4031
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$3;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 4033
    const-string/jumbo v1, ""

    .line 4035
    :try_start_3
    new-instance v3, Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$3;->a:Ljava/lang/String;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 4037
    const/4 v0, 0x0

    move v2, v0

    :goto_c
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_f} :catch_71

    move-result v0

    if-ge v2, v0, :cond_59

    .line 4039
    :try_start_12
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 4040
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Lcom/bzbs/lib/survey/bean/ImageUrl;

    invoke-direct {v5, v0}, Lcom/bzbs/lib/survey/bean/ImageUrl;-><init>(Lorg/json/JSONObject;)V

    iget-object v0, v5, Lcom/bzbs/lib/survey/bean/ImageUrl;->c:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_2d} :catch_33

    move-result-object v0

    .line 4037
    :goto_2e
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_c

    .line 4041
    :catch_33
    move-exception v0

    .line 4042
    :try_start_34
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$3;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->K(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(GetImageUrl|onComplete|for|JSONException):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_2e

    .line 4045
    :cond_59
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$3;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->u(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$3;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

    iget-object v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->q:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_70
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_70} :catch_71

    .line 4049
    :goto_70
    return-void

    .line 4046
    :catch_71
    move-exception v0

    .line 4047
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$3;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->f:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->K(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(GetImageUrl|onComplete|JSONException):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70
.end method
