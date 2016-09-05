.class final Lcom/samsung/privilege/util/DialogLoginGift$30;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 3

    .prologue
    .line 1566
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$30;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$30;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$30;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$30;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogMonthYear;->a(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 1572
    return-void
.end method
