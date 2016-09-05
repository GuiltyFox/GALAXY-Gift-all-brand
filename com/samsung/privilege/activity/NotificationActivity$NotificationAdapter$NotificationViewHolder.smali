.class public Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter$NotificationViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "NotificationActivity.java"


# instance fields
.field a:Landroid/support/v7/widget/CardView;

.field b:Landroid/widget/LinearLayout;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field final synthetic f:Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 310
    iput-object p1, p0, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter$NotificationViewHolder;->f:Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;

    .line 311
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 312
    const v0, 0x7f10010a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter$NotificationViewHolder;->a:Landroid/support/v7/widget/CardView;

    .line 313
    const v0, 0x7f1000ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter$NotificationViewHolder;->b:Landroid/widget/LinearLayout;

    .line 314
    const v0, 0x7f10010c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter$NotificationViewHolder;->c:Landroid/widget/ImageView;

    .line 315
    const v0, 0x7f10010d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter$NotificationViewHolder;->d:Landroid/widget/TextView;

    .line 316
    const v0, 0x7f10010e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter$NotificationViewHolder;->e:Landroid/widget/TextView;

    .line 317
    return-void
.end method
