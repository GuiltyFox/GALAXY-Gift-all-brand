.class public Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DialogNotification.java"


# instance fields
.field a:Landroid/support/v7/widget/CardView;

.field b:Landroid/widget/LinearLayout;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field final synthetic f:Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 365
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->f:Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter;

    .line 366
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 367
    const v0, 0x7f10010f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->a:Landroid/support/v7/widget/CardView;

    .line 368
    const v0, 0x7f1000d3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->b:Landroid/widget/LinearLayout;

    .line 369
    const v0, 0x7f100111

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->c:Landroid/widget/ImageView;

    .line 370
    const v0, 0x7f100112

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->d:Landroid/widget/TextView;

    .line 371
    const v0, 0x7f100113

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/util/DialogNotification$NotificationAdapter$NotificationViewHolder;->e:Landroid/widget/TextView;

    .line 372
    return-void
.end method
