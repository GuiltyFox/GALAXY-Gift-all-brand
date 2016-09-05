.class Lcom/samsung/privilege/activity/HistoryActivity$4$6;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/HistoryActivity$4;->a(Landroid/view/View;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/HistoryActivity$4;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryActivity$4;)V
    .registers 2

    .prologue
    .line 444
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryActivity$4$6;->a:Lcom/samsung/privilege/activity/HistoryActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .prologue
    .line 446
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 447
    return-void
.end method
