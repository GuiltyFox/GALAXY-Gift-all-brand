.class Lcom/samsung/privilege/service/BeaconStarterService$GetBeaconListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "BeaconStarterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/service/BeaconStarterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetBeaconListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/service/BeaconStarterService;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/service/BeaconStarterService;)V
    .registers 2

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/privilege/service/BeaconStarterService$GetBeaconListener;->this$0:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/service/BeaconStarterService;Lcom/samsung/privilege/service/BeaconStarterService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/privilege/service/BeaconStarterService;
    .param p2, "x1"    # Lcom/samsung/privilege/service/BeaconStarterService$1;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/samsung/privilege/service/BeaconStarterService$GetBeaconListener;-><init>(Lcom/samsung/privilege/service/BeaconStarterService;)V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 5
    .param p1, "response_code"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 148
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/privilege/service/BeaconStarterService$GetBeaconListener;->onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V

    .line 149
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8
    .param p1, "response_code"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 132
    invoke-static {p3}, Lcom/bzbs/util/StringUtil;->NewString([B)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "response_text":Ljava/lang/String;
    const-string/jumbo v1, "BeaconStarterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(GetBeaconListener|onComplete)response={"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_3f

    .line 136
    iget-object v1, p0, Lcom/samsung/privilege/service/BeaconStarterService$GetBeaconListener;->this$0:Lcom/samsung/privilege/service/BeaconStarterService;

    const/4 v2, 0x0

    # invokes: Lcom/samsung/privilege/service/BeaconStarterService;->processJsonBeacon(Ljava/lang/String;Z)V
    invoke-static {v1, v0, v2}, Lcom/samsung/privilege/service/BeaconStarterService;->access$100(Lcom/samsung/privilege/service/BeaconStarterService;Ljava/lang/String;Z)V

    .line 139
    :try_start_33
    const-string/jumbo v1, "ListBeacon"

    iget-object v2, p0, Lcom/samsung/privilege/service/BeaconStarterService$GetBeaconListener;->this$0:Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-virtual {v2}, Lcom/samsung/privilege/service/BeaconStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/bzbs/util/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3f} :catch_40

    .line 144
    :cond_3f
    :goto_3f
    return-void

    .line 140
    :catch_40
    move-exception v1

    goto :goto_3f
.end method
