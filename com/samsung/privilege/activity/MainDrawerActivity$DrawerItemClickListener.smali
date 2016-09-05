.class Lcom/samsung/privilege/activity/MainDrawerActivity$DrawerItemClickListener;
.super Ljava/lang/Object;
.source "MainDrawerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/MainDrawerActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/MainDrawerActivity;)V
    .registers 2

    .prologue
    .line 119
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainDrawerActivity$DrawerItemClickListener;->a:Lcom/samsung/privilege/activity/MainDrawerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/MainDrawerActivity;Lcom/samsung/privilege/activity/MainDrawerActivity$1;)V
    .registers 3

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainDrawerActivity$DrawerItemClickListener;-><init>(Lcom/samsung/privilege/activity/MainDrawerActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainDrawerActivity$DrawerItemClickListener;->a:Lcom/samsung/privilege/activity/MainDrawerActivity;

    invoke-static {v0, p3}, Lcom/samsung/privilege/activity/MainDrawerActivity;->a(Lcom/samsung/privilege/activity/MainDrawerActivity;I)V

    .line 123
    return-void
.end method
