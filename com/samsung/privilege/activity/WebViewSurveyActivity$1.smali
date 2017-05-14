.class Lcom/samsung/privilege/activity/WebViewSurveyActivity$1;
.super Ljava/lang/Object;
.source "WebViewSurveyActivity.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WebViewSurveyActivity;->l()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback",
        "<",
        "Lcom/google/gson/JsonArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)V
    .registers 2

    .prologue
    .line 373
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$1;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lcom/google/gson/JsonArray;)V
    .registers 6

    .prologue
    .line 377
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$1;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    const v1, 0x7f100733

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 378
    if-eqz p1, :cond_21

    .line 379
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$1;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    const-string/jumbo v1, "Error uploading file."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 380
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 410
    :cond_20
    :goto_20
    return-void

    .line 392
    :cond_21
    invoke-static {}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCompleted->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :try_start_40
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_20

    .line 397
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "imageUrl"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    if-eqz v0, :cond_20

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "javascript:uploadImageResult(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_94

    .line 401
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$1;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)Lcom/samsung/privilege/control/WebViewSurvey;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/privilege/control/WebViewSurvey;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_20

    .line 407
    :catch_92
    move-exception v0

    goto :goto_20

    .line 403
    :cond_94
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewSurveyActivity$1;->a:Lcom/samsung/privilege/activity/WebViewSurveyActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WebViewSurveyActivity;->a(Lcom/samsung/privilege/activity/WebViewSurveyActivity;)Lcom/samsung/privilege/control/WebViewSurvey;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/control/WebViewSurvey;->loadUrl(Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_9d} :catch_92

    goto :goto_20
.end method

.method public bridge synthetic a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 373
    check-cast p2, Lcom/google/gson/JsonArray;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/WebViewSurveyActivity$1;->a(Ljava/lang/Exception;Lcom/google/gson/JsonArray;)V

    return-void
.end method
