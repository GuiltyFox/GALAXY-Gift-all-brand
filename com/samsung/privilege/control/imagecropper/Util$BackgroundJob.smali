.class Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;
.super Lcom/samsung/privilege/control/imagecropper/MonitoredActivity$LifeCycleAdapter;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;

.field private final b:Landroid/app/ProgressDialog;

.field private final c:Ljava/lang/Runnable;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .registers 6

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/samsung/privilege/control/imagecropper/MonitoredActivity$LifeCycleAdapter;-><init>()V

    .line 158
    new-instance v0, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob$1;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob$1;-><init>(Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;)V

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;->e:Ljava/lang/Runnable;

    .line 169
    iput-object p1, p0, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;->a:Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;

    .line 170
    iput-object p3, p0, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;->b:Landroid/app/ProgressDialog;

    .line 171
    iput-object p2, p0, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;->c:Ljava/lang/Runnable;

    .line 172
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;->a:Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;

    invoke-virtual {v0, p0}, Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;->a(Lcom/samsung/privilege/control/imagecropper/MonitoredActivity$LifeCycleListener;)V

    .line 173
    iput-object p4, p0, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;->d:Landroid/os/Handler;

    .line 174
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;)Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;->a:Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;)V
    .registers 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 191
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method

.method public c(Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;)V
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 204
    return-void
.end method

.method public d(Lcom/samsung/privilege/control/imagecropper/MonitoredActivity;)V
    .registers 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 198
    return-void
.end method

.method public run()V
    .registers 4

    .prologue
    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_d

    .line 181
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    return-void

    .line 181
    :catchall_d
    move-exception v0

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/privilege/control/imagecropper/Util$BackgroundJob;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
