.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;
.super Landroid/os/AsyncTask;
.source "SurveyFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/SurveyFragmentActivity;
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

.field final synthetic this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

.field tvPercentLoader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Ljava/lang/String;)V
    .registers 4
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 2826
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2820
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->filePath:Ljava/lang/String;

    .line 2827
    iput-object p2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->filePath:Ljava/lang/String;

    .line 2828
    return-void
.end method

.method static synthetic access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;[Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4(Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    .registers 2

    .prologue
    .line 2818
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    return-object v0
.end method

.method private uploadFile()Ljava/lang/String;
    .registers 25

    .prologue
    .line 2883
    const/4 v14, 0x0

    .line 2885
    .local v14, "responseString":Ljava/lang/String;
    const-string v20, ""

    .line 2886
    .local v20, "url":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    sget-object v22, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "api/campaign/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v22, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static/range {v22 .. v22}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$8(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/survey_img"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2887
    const-string v21, "campaign.adbuzz"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "url= "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 2890
    .local v19, "token":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v22, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static/range {v22 .. v22}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lic/buzzebeeslib/control/CustomPager;->getCurrentItem()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->currentView:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2892
    .local v11, "qtId":Ljava/lang/String;
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 2893
    .local v9, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 2896
    .local v10, "httppost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_95
    new-instance v8, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity;

    new-instance v21, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$2;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;)V

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity;-><init>(Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$ProgressListener;)V

    .line 2904
    .local v8, "entity":Lic/buzzebeeslib/util/http/AndroidMultiPartEntity;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->filePath:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2907
    .local v16, "sourceFile":Ljava/io/File;
    const-string v21, "temp1"

    new-instance v22, Lorg/apache/http/entity/mime/content/FileBody;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 2909
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v21, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;
    invoke-static/range {v21 .. v21}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$35(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/util/async/PostData;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0
    :try_end_d6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_95 .. :try_end_d6} :catch_1a8
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_d6} :catch_1f6

    if-eqz v21, :cond_128

    .line 2911
    :try_start_d8
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2912
    .local v6, "bos":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v21, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gPostData:Lic/buzzebeeslib/util/async/PostData;
    invoke-static/range {v21 .. v21}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$35(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/util/async/PostData;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lic/buzzebeeslib/util/async/PostData;->gBitmapImage:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v23, 0x32

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2913
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 2914
    .local v5, "bitmapdata":[B
    const-string v21, "campaign.adbuzz"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "bitmapdata= "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    new-instance v4, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    const-string v21, "image/jpg"

    const-string v22, "collection.jpg"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v4, v5, v0, v1}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    .line 2916
    .local v4, "b":Lorg/apache/http/entity/mime/content/ByteArrayBody;
    const-string v21, "data"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0, v4}, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_128} :catch_190
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_d8 .. :try_end_128} :catch_1a8
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_128} :catch_1f6

    .line 2923
    .end local v4    # "b":Lorg/apache/http/entity/mime/content/ByteArrayBody;
    .end local v5    # "bitmapdata":[B
    .end local v6    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_128
    :goto_128
    :try_start_128
    const-string v21, "token"

    new-instance v22, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 2924
    const-string v21, "questionId"

    new-instance v22, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, v22

    invoke-direct {v0, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 2926
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v21, v0

    invoke-virtual {v8}, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity;->getContentLength()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->totalSize:J

    .line 2927
    invoke-virtual {v10, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 2930
    invoke-interface {v9, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 2931
    .local v13, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    .line 2933
    .local v12, "r_entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    .line 2934
    .local v17, "statusCode":I
    const/16 v21, 0xc8

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_1c8

    .line 2936
    invoke-static {v12}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v15

    .line 2937
    .local v15, "response_json":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v21, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$34(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/os/Handler;

    move-result-object v21

    new-instance v22, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$3;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2985
    .end local v8    # "entity":Lic/buzzebeeslib/util/http/AndroidMultiPartEntity;
    .end local v12    # "r_entity":Lorg/apache/http/HttpEntity;
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v15    # "response_json":Ljava/lang/String;
    .end local v16    # "sourceFile":Ljava/io/File;
    .end local v17    # "statusCode":I
    :goto_18f
    return-object v14

    .line 2917
    .restart local v8    # "entity":Lic/buzzebeeslib/util/http/AndroidMultiPartEntity;
    .restart local v16    # "sourceFile":Ljava/io/File;
    :catch_190
    move-exception v7

    .line 2918
    .local v7, "e":Ljava/lang/Exception;
    const-string v21, "campaign.adbuzz"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ERROR TOKEN2= "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_128 .. :try_end_1a7} :catch_1a8
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_1a7} :catch_1f6

    goto :goto_128

    .line 2967
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "entity":Lic/buzzebeeslib/util/http/AndroidMultiPartEntity;
    .end local v16    # "sourceFile":Ljava/io/File;
    :catch_1a8
    move-exception v7

    .line 2968
    .local v7, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v7}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2969
    move-object/from16 v18, v14

    .line 2970
    .local v18, "textError":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v21, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$34(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/os/Handler;

    move-result-object v21

    new-instance v22, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$5;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_18f

    .line 2958
    .end local v7    # "e":Lorg/apache/http/client/ClientProtocolException;
    .end local v18    # "textError":Ljava/lang/String;
    .restart local v8    # "entity":Lic/buzzebeeslib/util/http/AndroidMultiPartEntity;
    .restart local v12    # "r_entity":Lorg/apache/http/HttpEntity;
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v16    # "sourceFile":Ljava/io/File;
    .restart local v17    # "statusCode":I
    :cond_1c8
    :try_start_1c8
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Error occurred! Http Status Code: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2959
    move-object/from16 v18, v14

    .line 2960
    .restart local v18    # "textError":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v21, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$34(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/os/Handler;

    move-result-object v21

    new-instance v22, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$4;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1f5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1c8 .. :try_end_1f5} :catch_1a8
    .catch Ljava/io/IOException; {:try_start_1c8 .. :try_end_1f5} :catch_1f6

    goto :goto_18f

    .line 2975
    .end local v8    # "entity":Lic/buzzebeeslib/util/http/AndroidMultiPartEntity;
    .end local v12    # "r_entity":Lorg/apache/http/HttpEntity;
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v16    # "sourceFile":Ljava/io/File;
    .end local v17    # "statusCode":I
    .end local v18    # "textError":Ljava/lang/String;
    :catch_1f6
    move-exception v7

    .line 2976
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2977
    move-object/from16 v18, v14

    .line 2978
    .restart local v18    # "textError":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-object/from16 v21, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$34(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/os/Handler;

    move-result-object v21

    new-instance v22, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$6;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$6;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_18f
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 2878
    invoke-direct {p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->uploadFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 2991
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->dialogUpload:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2992
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2993
    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2834
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->dialogUpload:Landroid/app/ProgressDialog;

    .line 2835
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->dialogUpload:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2836
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->dialogUpload:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 2837
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->dialogUpload:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2838
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->dialogUpload:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 2840
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->dialogUpload:Landroid/app/ProgressDialog;

    sget v1, Lic/buzzebeeslib/R$layout;->bz_dialog_progress_loading:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setContentView(I)V

    .line 2841
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->dialogUpload:Landroid/app/ProgressDialog;

    sget v1, Lic/buzzebeeslib/R$id;->tvPercentLoader:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->tvPercentLoader:Landroid/widget/TextView;

    .line 2842
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->dialogUpload:Landroid/app/ProgressDialog;

    sget v1, Lic/buzzebeeslib/R$id;->progress_bar_video:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->progress_bar_video:Landroid/widget/ProgressBar;

    .line 2843
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->dialogUpload:Landroid/app/ProgressDialog;

    sget v1, Lic/buzzebeeslib/R$id;->btnClose:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->btnClose:Landroid/widget/ImageView;

    .line 2844
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->tvPercentLoader:Landroid/widget/TextView;

    const-string v1, "uploading.. 0%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2845
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->progress_bar_video:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2846
    const-string v0, "OAT"

    const-string v1, "progress= 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->btnClose:Landroid/widget/ImageView;

    new-instance v1, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$1;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer$1;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2856
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2857
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 6
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x0

    .line 2872
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->tvPercentLoader:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uploading.. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p1, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2873
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->progress_bar_video:Landroid/widget/ProgressBar;

    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2874
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$UploadFileToServer;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
