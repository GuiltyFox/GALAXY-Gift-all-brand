.class public Lcom/bzbs/lib/survey/models/ContinueDataModel;
.super Ljava/lang/Object;
.source "ContinueDataModel.java"


# instance fields
.field private Model:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Imei"
    .end annotation
.end field

.field private Serial:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Model"
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
    .param p1, "model"    # Ljava/lang/String;
    .param p2, "serial"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/bzbs/lib/survey/models/ContinueDataModel;->Model:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/bzbs/lib/survey/models/ContinueDataModel;->Serial:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/bzbs/lib/survey/models/ContinueDataModel;->Model:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bzbs/lib/survey/models/ContinueDataModel;->Serial:Ljava/lang/String;

    return-object v0
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/bzbs/lib/survey/models/ContinueDataModel;->Model:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setSerial(Ljava/lang/String;)V
    .registers 2
    .param p1, "serial"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/bzbs/lib/survey/models/ContinueDataModel;->Serial:Ljava/lang/String;

    .line 37
    return-void
.end method
