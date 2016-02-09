.class public abstract Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$BackgroundTask;
.super Ljava/lang/Object;
.source "IOUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BackgroundTask"
.end annotation


# instance fields
.field public mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$BackgroundTask;->mHandler:Landroid/os/Handler;

    .line 64
    return-void
.end method


# virtual methods
.method public abstract doInBackground()V
.end method

.method public onFinished()V
    .registers 1

    .prologue
    .line 70
    return-void
.end method

.method public final run()V
    .registers 3

    .prologue
    .line 73
    invoke-virtual {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$BackgroundTask;->doInBackground()V

    .line 74
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$BackgroundTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$BackgroundTask$1;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$BackgroundTask$1;-><init>(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$BackgroundTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method
