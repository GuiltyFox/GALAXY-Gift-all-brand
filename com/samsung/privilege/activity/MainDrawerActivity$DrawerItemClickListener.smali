.class Lcom/samsung/privilege/activity/MainDrawerActivity$DrawerItemClickListener;
.super Ljava/lang/Object;
.source "MainDrawerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/MainDrawerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainDrawerActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/MainDrawerActivity;)V
    .registers 2

    .prologue
    .line 119
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainDrawerActivity$DrawerItemClickListener;->this$0:Lcom/samsung/privilege/activity/MainDrawerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/MainDrawerActivity;Lcom/samsung/privilege/activity/MainDrawerActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/privilege/activity/MainDrawerActivity;
    .param p2, "x1"    # Lcom/samsung/privilege/activity/MainDrawerActivity$1;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainDrawerActivity$DrawerItemClickListener;-><init>(Lcom/samsung/privilege/activity/MainDrawerActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainDrawerActivity$DrawerItemClickListener;->this$0:Lcom/samsung/privilege/activity/MainDrawerActivity;

    # invokes: Lcom/samsung/privilege/activity/MainDrawerActivity;->selectItem(I)V
    invoke-static {v0, p3}, Lcom/samsung/privilege/activity/MainDrawerActivity;->access$100(Lcom/samsung/privilege/activity/MainDrawerActivity;I)V

    .line 123
    return-void
.end method
