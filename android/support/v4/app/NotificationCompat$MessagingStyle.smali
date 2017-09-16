.class public Landroid/support/v4/app/NotificationCompat$MessagingStyle;
.super Landroid/support/v4/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# instance fields
.field a:Ljava/lang/CharSequence;

.field b:Ljava/lang/CharSequence;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 2049
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    .line 2047
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->c:Ljava/util/List;

    .line 2050
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 2156
    invoke-super {p0, p1}, Landroid/support/v4/app/NotificationCompat$Style;->a(Landroid/os/Bundle;)V

    .line 2157
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_f

    .line 2158
    const-string/jumbo v0, "android.selfDisplayName"

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2160
    :cond_f
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->b:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1b

    .line 2161
    const-string/jumbo v0, "android.conversationTitle"

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2163
    :cond_1b
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    const-string/jumbo v0, "android.messages"

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->c:Ljava/util/List;

    .line 2164
    invoke-static {v1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->a(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v1

    .line 2163
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2166
    :cond_2f
    return-void
.end method
