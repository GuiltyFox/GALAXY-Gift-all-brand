.class public abstract Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask;
.super Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$BackgroundTask;
.source "IOUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ProgressBackgroundTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask$ProgressListener;
    }
.end annotation


# instance fields
.field private mListener:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask$ProgressListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$BackgroundTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask;)Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask$ProgressListener;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask;->mListener:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask$ProgressListener;

    return-object v0
.end method


# virtual methods
.method public postProgress(IILjava/lang/String;)V
    .registers 6
    .param p1, "value"    # I
    .param p2, "max"    # I
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask;->mListener:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask$ProgressListener;

    if-eqz v0, :cond_e

    .line 98
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask$1;-><init>(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    :cond_e
    return-void
.end method

.method public setProgressListener(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask$ProgressListener;)V
    .registers 2
    .param p1, "listener"    # Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask$ProgressListener;

    .prologue
    .line 93
    iput-object p1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask;->mListener:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask$ProgressListener;

    .line 94
    return-void
.end method
