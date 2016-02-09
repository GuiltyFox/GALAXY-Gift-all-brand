.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;
.super Ljava/util/TimerTask;
.source "MarketPlaceDetail2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlideImageTask"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V
    .registers 2

    .prologue
    .line 4320
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    .registers 2

    .prologue
    .line 4320
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 4322
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask$1;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4337
    return-void
.end method
