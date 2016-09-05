.class final Lcom/samsung/privilege/util/DialogNotification$2;
.super Ljava/lang/Object;
.source "DialogNotification.java"

# interfaces
.implements Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogNotification;->a(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 135
    const v0, 0x7f1000ce

    :try_start_3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 136
    const v1, 0x7f020072

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_1d

    .line 141
    :goto_f
    :try_start_f
    invoke-static {}, Lcom/samsung/privilege/util/DialogNotification;->g()Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;->a(I)Lcom/bzbs/bean/MessageGCM;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/util/DialogNotification;->a(Lcom/bzbs/bean/MessageGCM;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_1b

    .line 145
    :goto_1a
    return-void

    .line 142
    :catch_1b
    move-exception v0

    goto :goto_1a

    .line 137
    :catch_1d
    move-exception v0

    goto :goto_f
.end method
