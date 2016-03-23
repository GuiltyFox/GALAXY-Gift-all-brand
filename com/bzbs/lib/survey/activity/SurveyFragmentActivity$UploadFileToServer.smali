.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;
.super Landroid/os/AsyncTask;
.source "SurveyFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadFileToServer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field btnClose:Landroid/widget/ImageView;

.field dialogUpload:Landroid/app/ProgressDialog;

.field filePath:Ljava/lang/String;

.field progress_bar_video:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

.field tvPercentLoader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V
    .registers 4
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 3879
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3873
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->filePath:Ljava/lang/String;

    .line 3880
    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->filePath:Ljava/lang/String;

    .line 3881
    return-void
.end method

.method static synthetic access$4700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;[Ljava/lang/Object;)V
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 3871
    invoke-virtual {p0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private uploadFile()Ljava/lang/String;
    .registers 27

    .prologue
    .line 3937
    const/16 v16, 0x0

    .line 3939
    .local v16, "responseString":Ljava/lang/String;
    const-string/jumbo v22, ""

    .line 3940
    .local v22, "url":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/bzbs/lib/survey/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "api/campaign/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v24, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static/range {v24 .. v24}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->ID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/survey_img"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 3941
    const-string/jumbo v23, "campaign.adbuzz"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "url= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/bzbs/lib/survey/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    .line 3945
    .local v21, "token":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v24, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static/range {v24 .. v24}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/bzbs/lib/survey/control/CustomPager;->getCurrentItem()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->currentView:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3947
    .local v13, "qtId":Ljava/lang/String;
    const-string/jumbo v23, "campaign.adbuzz"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "token= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3948
    const-string/jumbo v23, "campaign.adbuzz"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "questionId= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3950
    new-instance v11, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v11}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 3951
    .local v11, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 3954
    .local v12, "httppost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_da
    new-instance v10, Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity;

    new-instance v23, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$2;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;)V

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity;-><init>(Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$ProgressListener;)V

    .line 3962
    .local v10, "entity":Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->filePath:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3980
    .local v18, "sourceFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gPostData:Lcom/bzbs/lib/survey/util/async/PostData;
    invoke-static/range {v23 .. v23}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$4800(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/util/async/PostData;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/async/PostData;->gPath:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/bzbs/lib/survey/util/image/Utils;->showImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 3983
    .local v6, "bitmapFromFile":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_184

    .line 3984
    const/16 v23, 0x1e0

    move/from16 v0, v23

    invoke-static {v6, v0}, Lcom/bzbs/lib/survey/util/BitmapScaler;->scaleToFitWidth(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3985
    .local v5, "bitmapFile":Landroid/graphics/Bitmap;
    const-string/jumbo v23, "bitmapFile Resizer"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13d
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_da .. :try_end_13d} :catch_219
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_13d} :catch_26c

    .line 3987
    :try_start_13d
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3989
    .local v8, "bos":Ljava/io/ByteArrayOutputStream;
    sget-object v23, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v24, 0x64

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3990
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 3991
    .local v7, "bitmapdataFile":[B
    const-string/jumbo v23, "campaign.adbuzz"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "temp1= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3992
    new-instance v4, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    const-string/jumbo v23, "image/jpg"

    const-string/jumbo v24, "collection.jpg"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v4, v7, v0, v1}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    .line 3993
    .local v4, "b":Lorg/apache/http/entity/mime/content/ByteArrayBody;
    const-string/jumbo v23, "temp1"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v4}, Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_184} :catch_1fa
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_13d .. :try_end_184} :catch_219
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_184} :catch_26c

    .line 4016
    .end local v4    # "b":Lorg/apache/http/entity/mime/content/ByteArrayBody;
    .end local v5    # "bitmapFile":Landroid/graphics/Bitmap;
    .end local v7    # "bitmapdataFile":[B
    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_184
    :goto_184
    :try_start_184
    const-string/jumbo v23, "token"

    new-instance v24, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 4017
    const-string/jumbo v23, "questionId"

    new-instance v24, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, v24

    invoke-direct {v0, v13}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 4019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v23, v0

    invoke-virtual {v10}, Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity;->getContentLength()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->totalSize:J

    .line 4020
    invoke-virtual {v12, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 4023
    invoke-interface {v11, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 4024
    .local v15, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    .line 4026
    .local v14, "r_entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    .line 4027
    .local v19, "statusCode":I
    const/16 v23, 0xc8

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_239

    .line 4029
    invoke-static {v14}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v17

    .line 4030
    .local v17, "response_json":Ljava/lang/String;
    const-string/jumbo v23, "Image response_json : "

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$4400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/os/Handler;

    move-result-object v23

    new-instance v24, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$3;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4079
    .end local v6    # "bitmapFromFile":Landroid/graphics/Bitmap;
    .end local v10    # "entity":Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity;
    .end local v14    # "r_entity":Lorg/apache/http/HttpEntity;
    .end local v15    # "response":Lorg/apache/http/HttpResponse;
    .end local v17    # "response_json":Ljava/lang/String;
    .end local v18    # "sourceFile":Ljava/io/File;
    .end local v19    # "statusCode":I
    :goto_1f9
    return-object v16

    .line 3994
    .restart local v5    # "bitmapFile":Landroid/graphics/Bitmap;
    .restart local v6    # "bitmapFromFile":Landroid/graphics/Bitmap;
    .restart local v10    # "entity":Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity;
    .restart local v18    # "sourceFile":Ljava/io/File;
    :catch_1fa
    move-exception v9

    .line 3995
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v23, "campaign.adbuzz"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "ERROR TOKEN2= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_217
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_184 .. :try_end_217} :catch_219
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_217} :catch_26c

    goto/16 :goto_184

    .line 4061
    .end local v5    # "bitmapFile":Landroid/graphics/Bitmap;
    .end local v6    # "bitmapFromFile":Landroid/graphics/Bitmap;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "entity":Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity;
    .end local v18    # "sourceFile":Ljava/io/File;
    :catch_219
    move-exception v9

    .line 4062
    .local v9, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v9}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v16

    .line 4063
    move-object/from16 v20, v16

    .line 4064
    .local v20, "textError":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$4400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/os/Handler;

    move-result-object v23

    new-instance v24, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$5;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1f9

    .line 4052
    .end local v9    # "e":Lorg/apache/http/client/ClientProtocolException;
    .end local v20    # "textError":Ljava/lang/String;
    .restart local v6    # "bitmapFromFile":Landroid/graphics/Bitmap;
    .restart local v10    # "entity":Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity;
    .restart local v14    # "r_entity":Lorg/apache/http/HttpEntity;
    .restart local v15    # "response":Lorg/apache/http/HttpResponse;
    .restart local v18    # "sourceFile":Ljava/io/File;
    .restart local v19    # "statusCode":I
    :cond_239
    :try_start_239
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Error occurred! Http Status Code: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 4053
    move-object/from16 v20, v16

    .line 4054
    .restart local v20    # "textError":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$4400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/os/Handler;

    move-result-object v23

    new-instance v24, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$4;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_26b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_239 .. :try_end_26b} :catch_219
    .catch Ljava/io/IOException; {:try_start_239 .. :try_end_26b} :catch_26c

    goto :goto_1f9

    .line 4069
    .end local v6    # "bitmapFromFile":Landroid/graphics/Bitmap;
    .end local v10    # "entity":Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity;
    .end local v14    # "r_entity":Lorg/apache/http/HttpEntity;
    .end local v15    # "response":Lorg/apache/http/HttpResponse;
    .end local v18    # "sourceFile":Ljava/io/File;
    .end local v19    # "statusCode":I
    .end local v20    # "textError":Ljava/lang/String;
    :catch_26c
    move-exception v9

    .line 4070
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    .line 4071
    move-object/from16 v20, v16

    .line 4072
    .restart local v20    # "textError":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$4400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/os/Handler;

    move-result-object v23

    new-instance v24, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$6;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$6;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1f9
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 3871
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 3932
    invoke-direct {p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->uploadFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 3871
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 4085
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->dialogUpload:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4086
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 4087
    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3887
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->dialogUpload:Landroid/app/ProgressDialog;

    .line 3888
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->dialogUpload:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 3889
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->dialogUpload:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 3890
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->dialogUpload:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3891
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->dialogUpload:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 3893
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->dialogUpload:Landroid/app/ProgressDialog;

    sget v1, Lcom/bzbs/lib/survey/R$layout;->bz_dialog_progress_loading:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setContentView(I)V

    .line 3894
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->dialogUpload:Landroid/app/ProgressDialog;

    sget v1, Lcom/bzbs/lib/survey/R$id;->tvPercentLoader:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->tvPercentLoader:Landroid/widget/TextView;

    .line 3895
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->dialogUpload:Landroid/app/ProgressDialog;

    sget v1, Lcom/bzbs/lib/survey/R$id;->progress_bar_video:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->progress_bar_video:Landroid/widget/ProgressBar;

    .line 3896
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->dialogUpload:Landroid/app/ProgressDialog;

    sget v1, Lcom/bzbs/lib/survey/R$id;->btnClose:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->btnClose:Landroid/widget/ImageView;

    .line 3897
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->tvPercentLoader:Landroid/widget/TextView;

    const-string/jumbo v1, "uploading.. 0%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3898
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->progress_bar_video:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3899
    const-string/jumbo v0, "OAT"

    const-string/jumbo v1, "progress= 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3900
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->btnClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$1;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$1;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3910
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 3911
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 6
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x0

    .line 3926
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->tvPercentLoader:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uploading.. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3927
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->progress_bar_video:Landroid/widget/ProgressBar;

    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3928
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 3871
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
