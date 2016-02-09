.class Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$BackgroundTask$1;
.super Ljava/lang/Object;
.source "IOUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$BackgroundTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$BackgroundTask;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$BackgroundTask;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$BackgroundTask$1;->this$1:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$BackgroundTask;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$BackgroundTask$1;->this$1:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$BackgroundTask;

    invoke-virtual {v0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$BackgroundTask;->onFinished()V

    .line 78
    return-void
.end method
