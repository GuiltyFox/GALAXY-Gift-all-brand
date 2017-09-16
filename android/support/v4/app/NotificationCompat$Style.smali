.class public abstract Landroid/support/v4/app/NotificationCompat$Style;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field d:Landroid/support/v4/app/NotificationCompat$Builder;

.field e:Ljava/lang/CharSequence;

.field f:Ljava/lang/CharSequence;

.field g:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1850
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->g:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 1875
    return-void
.end method

.method public a(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .registers 3

    .prologue
    .line 1853
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->d:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eq v0, p1, :cond_f

    .line 1854
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Style;->d:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1855
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->d:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_f

    .line 1856
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->d:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->a(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1859
    :cond_f
    return-void
.end method
