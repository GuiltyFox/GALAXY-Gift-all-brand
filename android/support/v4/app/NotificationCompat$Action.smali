.class public Landroid/support/v4/app/NotificationCompat$Action;
.super Landroid/support/v4/app/NotificationCompatBase$Action;
.source "NotificationCompat.java"


# static fields
.field public static final e:Landroid/support/v4/app/NotificationCompatBase$Action$Factory;


# instance fields
.field final a:Landroid/os/Bundle;

.field public b:I

.field public c:Ljava/lang/CharSequence;

.field public d:Landroid/app/PendingIntent;

.field private final f:[Landroid/support/v4/app/RemoteInput;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2860
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action$1;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$Action$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompat$Action;->e:Landroid/support/v4/app/NotificationCompatBase$Action$Factory;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 2451
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->b:I

    return v0
.end method

.method public b()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2456
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()Landroid/app/PendingIntent;
    .registers 2

    .prologue
    .line 2461
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->d:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public d()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 2469
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 2478
    iget-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->g:Z

    return v0
.end method

.method public f()[Landroid/support/v4/app/RemoteInput;
    .registers 2

    .prologue
    .line 2487
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->f:[Landroid/support/v4/app/RemoteInput;

    return-object v0
.end method

.method public synthetic g()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .registers 2

    .prologue
    .line 2416
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->f()[Landroid/support/v4/app/RemoteInput;

    move-result-object v0

    return-object v0
.end method
