.class Landroid/support/v4/app/NotificationCompatApi20;
.super Ljava/lang/Object;
.source "NotificationCompatApi20.java"


# direct methods
.method public static a(Landroid/app/Notification$Builder;Landroid/support/v4/app/NotificationCompatBase$Action;)V
    .registers 7

    .prologue
    .line 113
    new-instance v1, Landroid/app/Notification$Action$Builder;

    .line 114
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->a()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->c()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 115
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->g()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 117
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->g()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/support/v4/app/RemoteInputCompatApi20;->a([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_21
    if-ge v0, v3, :cond_2b

    aget-object v4, v2, v0

    .line 118
    invoke-virtual {v1, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 122
    :cond_2b
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->d()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->d()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 127
    :goto_3a
    const-string/jumbo v2, "android.support.allowGeneratedReplies"

    .line 128
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->e()Z

    move-result v3

    .line 127
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    invoke-virtual {v1, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 130
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 131
    return-void

    .line 125
    :cond_4f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_3a
.end method
