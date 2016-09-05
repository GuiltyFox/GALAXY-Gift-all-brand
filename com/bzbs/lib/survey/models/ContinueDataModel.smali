.class public Lcom/bzbs/lib/survey/models/ContinueDataModel;
.super Ljava/lang/Object;
.source "ContinueDataModel.java"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "Imei"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "Model"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/bzbs/lib/survey/models/ContinueDataModel;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/bzbs/lib/survey/models/ContinueDataModel;->b:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/bzbs/lib/survey/models/ContinueDataModel;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bzbs/lib/survey/models/ContinueDataModel;->b:Ljava/lang/String;

    return-object v0
.end method
