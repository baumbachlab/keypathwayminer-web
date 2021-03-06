<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <r:require modules="graphSigma, application"/>
    <r:layoutResources/>
</head>

<body>
<h1>Example graph (using Sigma.js)</h1>


<!-- END SIGMA IMPORTS -->
<div id="container">
    <style>
    #graph-container {
        width:1000px;
        height:1000px;
        border: 1px solid #efefef;
        padding:5px;
        background:white;
    }

    .graphText{
        color:#CCCCCC;display:block;width:100%;margin-left:auto;margin-right:auto;text-align: center;padding-top:100px;
    }
    </style>

    <button class="btn" id="stop-layout">Stop Layout</button>
    <button class="btn" id="download-button">Download graph</button>

    <div id="errMsg">

    </div>

    <canvas id="mergedCanvas" class="width:1000px;height:1000px;border: 1px solid #efefef;">
    </canvas>
    <img id="sigmaImage" class="width:1000px;height:1000px;border: 1px solid #efefef;"/>
    <div id="graph-container">
        <h1 class="graphText">The graph be shown here.</h1>
    </div>

</div>
<script>
    $(document).ready(function () {
        drawSigmaGraph({
            "name": "graph-hprd-entrez.sif",
            "edges":[{"id":3804,"source":"2917","target":"2316","value":1,"relationshipType":"pp"},{"id":3882,"source":"2917","target":"7278","value":1,"relationshipType":"pp"},{"id":3784,"source":"5578","target":"8525","value":1,"relationshipType":"pp"},{"id":3879,"source":"2534","target":"7837","value":1,"relationshipType":"pp"},{"id":3887,"source":"10399","target":"8831","value":1,"relationshipType":"pp"},{"id":3885,"source":"1742","target":"2534","value":1,"relationshipType":"pp"},{"id":3808,"source":"27040","target":"5335","value":1,"relationshipType":"pp"},{"id":3831,"source":"2885","target":"5335","value":1,"relationshipType":"pp"},{"id":3833,"source":"2534","target":"5335","value":1,"relationshipType":"pp"},{"id":3881,"source":"2048","target":"2902","value":1,"relationshipType":"pp"},{"id":3868,"source":"801","target":"4638","value":1,"relationshipType":"pp"},{"id":3888,"source":"2776","target":"6000","value":1,"relationshipType":"pp"},{"id":3874,"source":"5829","target":"10376","value":1,"relationshipType":"pp"},{"id":3830,"source":"5578","target":"5879","value":1,"relationshipType":"pp"},{"id":3810,"source":"54331","target":"10681","value":1,"relationshipType":"pp"},{"id":3796,"source":"70","target":"81","value":1,"relationshipType":"pp"},{"id":3820,"source":"7222","target":"23236","value":1,"relationshipType":"pp"},{"id":3827,"source":"3688","target":"5829","value":1,"relationshipType":"pp"},{"id":3789,"source":"2534","target":"7409","value":1,"relationshipType":"pp"},{"id":3776,"source":"8655","target":"56288","value":1,"relationshipType":"pp"},{"id":3836,"source":"1742","target":"5578","value":1,"relationshipType":"pp"},{"id":3842,"source":"2534","target":"7278","value":1,"relationshipType":"pp"},{"id":3787,"source":"2786","target":"10681","value":1,"relationshipType":"pp"},{"id":3860,"source":"2902","target":"8831","value":1,"relationshipType":"pp"},{"id":3781,"source":"5911","target":"5894","value":1,"relationshipType":"pp"},{"id":3873,"source":"7837","target":"3688","value":1,"relationshipType":"pp"},{"id":3861,"source":"23236","target":"56288","value":1,"relationshipType":"pp"},{"id":3826,"source":"3688","target":"3964","value":1,"relationshipType":"pp"},{"id":3865,"source":"2902","target":"5581","value":1,"relationshipType":"pp"},{"id":3774,"source":"7837","target":"26986","value":1,"relationshipType":"pp"},{"id":3858,"source":"7837","target":"4690","value":1,"relationshipType":"pp"},{"id":3863,"source":"2534","target":"5829","value":1,"relationshipType":"pp"},{"id":3821,"source":"2534","target":"5894","value":1,"relationshipType":"pp"},{"id":3806,"source":"5335","target":"28964","value":1,"relationshipType":"pp"},{"id":3800,"source":"9924","target":"26986","value":1,"relationshipType":"pp"},{"id":3792,"source":"5335","target":"7222","value":1,"relationshipType":"pp"},{"id":3835,"source":"70","target":"2039","value":1,"relationshipType":"pp"},{"id":3772,"source":"3676","target":"3964","value":1,"relationshipType":"pp"},{"id":3859,"source":"1756","target":"8525","value":1,"relationshipType":"pp"},{"id":3851,"source":"5335","target":"7409","value":1,"relationshipType":"pp"},{"id":3847,"source":"2902","target":"5911","value":1,"relationshipType":"pp"},{"id":3782,"source":"2917","target":"7277","value":1,"relationshipType":"pp"},{"id":3876,"source":"8655","target":"116443","value":1,"relationshipType":"pp"},{"id":3845,"source":"1840","target":"196403","value":1,"relationshipType":"pp"},{"id":3853,"source":"2534","target":"10522","value":1,"relationshipType":"pp"},{"id":3856,"source":"5335","target":"8525","value":1,"relationshipType":"pp"},{"id":3855,"source":"2885","target":"10817","value":1,"relationshipType":"pp"},{"id":3872,"source":"2316","target":"3688","value":1,"relationshipType":"pp"},{"id":3777,"source":"3676","target":"3688","value":1,"relationshipType":"pp"},{"id":3829,"source":"2534","target":"4915","value":1,"relationshipType":"pp"},{"id":3775,"source":"10817","target":"4915","value":1,"relationshipType":"pp"},{"id":3823,"source":"4690","target":"5879","value":1,"relationshipType":"pp"},{"id":3843,"source":"70","target":"4638","value":1,"relationshipType":"pp"},{"id":3807,"source":"3688","target":"81","value":1,"relationshipType":"pp"},{"id":3791,"source":"2885","target":"30837","value":1,"relationshipType":"pp"},{"id":3852,"source":"27040","target":"2885","value":1,"relationshipType":"pp"},{"id":3798,"source":"3676","target":"7837","value":1,"relationshipType":"pp"},{"id":3770,"source":"70","target":"8655","value":1,"relationshipType":"pp"},{"id":3837,"source":"70","target":"1756","value":1,"relationshipType":"pp"},{"id":3814,"source":"3676","target":"10863","value":1,"relationshipType":"pp"},{"id":3811,"source":"5335","target":"30837","value":1,"relationshipType":"pp"},{"id":3793,"source":"5581","target":"5894","value":1,"relationshipType":"pp"},{"id":3778,"source":"7409","target":"27040","value":1,"relationshipType":"pp"},{"id":3886,"source":"8831","target":"2885","value":1,"relationshipType":"pp"},{"id":3848,"source":"8525","target":"10125","value":1,"relationshipType":"pp"},{"id":3857,"source":"5879","target":"7277","value":1,"relationshipType":"pp"},{"id":3794,"source":"6000","target":"10681","value":1,"relationshipType":"pp"},{"id":3788,"source":"5335","target":"10399","value":1,"relationshipType":"pp"},{"id":3880,"source":"7837","target":"3655","value":1,"relationshipType":"pp"},{"id":3825,"source":"5578","target":"6814","value":1,"relationshipType":"pp"},{"id":3812,"source":"2534","target":"9094","value":1,"relationshipType":"pp"},{"id":3797,"source":"801","target":"2917","value":1,"relationshipType":"pp"},{"id":3839,"source":"5829","target":"7278","value":1,"relationshipType":"pp"},{"id":3883,"source":"2316","target":"5879","value":1,"relationshipType":"pp"},{"id":3850,"source":"10399","target":"3688","value":1,"relationshipType":"pp"},{"id":3780,"source":"2534","target":"10399","value":1,"relationshipType":"pp"},{"id":3773,"source":"8655","target":"10721","value":1,"relationshipType":"pp"},{"id":3871,"source":"10399","target":"26986","value":1,"relationshipType":"pp"},{"id":3809,"source":"10605","target":"26986","value":1,"relationshipType":"pp"},{"id":3834,"source":"4915","target":"8655","value":1,"relationshipType":"pp"},{"id":3805,"source":"8655","target":"9924","value":1,"relationshipType":"pp"},{"id":3783,"source":"1840","target":"2885","value":1,"relationshipType":"pp"},{"id":3785,"source":"3688","target":"3655","value":1,"relationshipType":"pp"},{"id":3771,"source":"2917","target":"10376","value":1,"relationshipType":"pp"},{"id":3822,"source":"3688","target":"5578","value":1,"relationshipType":"pp"},{"id":3828,"source":"5829","target":"3676","value":1,"relationshipType":"pp"},{"id":3866,"source":"10376","target":"2534","value":1,"relationshipType":"pp"},{"id":3790,"source":"5335","target":"54822","value":1,"relationshipType":"pp"},{"id":3786,"source":"10376","target":"7837","value":1,"relationshipType":"pp"},{"id":3803,"source":"5581","target":"10399","value":1,"relationshipType":"pp"},{"id":3854,"source":"2776","target":"54331","value":1,"relationshipType":"pp"},{"id":3862,"source":"8831","target":"4690","value":1,"relationshipType":"pp"},{"id":3799,"source":"1742","target":"8655","value":1,"relationshipType":"pp"},{"id":3818,"source":"4690","target":"5829","value":1,"relationshipType":"pp"},{"id":3815,"source":"2786","target":"5894","value":1,"relationshipType":"pp"},{"id":3779,"source":"4690","target":"23043","value":1,"relationshipType":"pp"},{"id":3849,"source":"4638","target":"5578","value":1,"relationshipType":"pp"},{"id":3864,"source":"7278","target":"8655","value":1,"relationshipType":"pp"},{"id":3795,"source":"1742","target":"2902","value":1,"relationshipType":"pp"},{"id":3884,"source":"7278","target":"7837","value":1,"relationshipType":"pp"},{"id":3889,"source":"5829","target":"26986","value":1,"relationshipType":"pp"},{"id":3846,"source":"7409","target":"2885","value":1,"relationshipType":"pp"},{"id":3813,"source":"2048","target":"4690","value":1,"relationshipType":"pp"},{"id":3841,"source":"2917","target":"2776","value":1,"relationshipType":"pp"},{"id":3801,"source":"70","target":"5581","value":1,"relationshipType":"pp"},{"id":3817,"source":"2534","target":"7277","value":1,"relationshipType":"pp"},{"id":3870,"source":"5911","target":"23043","value":1,"relationshipType":"pp"},{"id":3832,"source":"4690","target":"4915","value":1,"relationshipType":"pp"},{"id":3877,"source":"2885","target":"3655","value":1,"relationshipType":"pp"},{"id":3824,"source":"7837","target":"8831","value":1,"relationshipType":"pp"},{"id":3844,"source":"23236","target":"54822","value":1,"relationshipType":"pp"},{"id":3869,"source":"2902","target":"116443","value":1,"relationshipType":"pp"},{"id":3867,"source":"8831","target":"2048","value":1,"relationshipType":"pp"},{"id":3816,"source":"5894","target":"7409","value":1,"relationshipType":"pp"},{"id":3802,"source":"3655","target":"5829","value":1,"relationshipType":"pp"},{"id":3875,"source":"7837","target":"28964","value":1,"relationshipType":"pp"},{"id":3819,"source":"28964","target":"5829","value":1,"relationshipType":"pp"},{"id":3878,"source":"5578","target":"10399","value":1,"relationshipType":"pp"},{"id":3838,"source":"4690","target":"30837","value":1,"relationshipType":"pp"},{"id":3840,"source":"2776","target":"23236","value":1,"relationshipType":"pp"}],
            "nodes":[{"gID":"5829","id":"5829","name":"5829","overlapCount":5,"color":"#78ff00"},{"gID":"6814","id":"6814","name":"6814","overlapCount":1,"color":"#00ff00"},{"gID":"54331","id":"54331","name":"54331","overlapCount":9,"color":"#f0ff00"},{"gID":"10522","id":"10522","name":"10522","overlapCount":1,"color":"#00ff00"},{"gID":"7837","id":"7837","name":"7837","overlapCount":1,"color":"#00ff00"},{"gID":"2917","id":"2917","name":"2917","overlapCount":20,"color":"#ff0000"},{"gID":"3676","id":"3676","name":"3676","overlapCount":4,"color":"#5aff00"},{"gID":"26986","id":"26986","name":"26986","overlapCount":8,"color":"#d2ff00"},{"gID":"56288","id":"56288","name":"56288","overlapCount":4,"color":"#5aff00"},{"gID":"3964","id":"3964","name":"3964","overlapCount":10,"color":"#fff300"},{"gID":"3655","id":"3655","name":"3655","overlapCount":1,"color":"#00ff00"},{"gID":"10681","id":"10681","name":"10681","overlapCount":18,"color":"#ff3100"},{"gID":"9094","id":"9094","name":"9094","overlapCount":1,"color":"#00ff00"},{"gID":"10721","id":"10721","name":"10721","overlapCount":17,"color":"#ff4900"},{"gID":"801","id":"801","name":"801","overlapCount":1,"color":"#00ff00"},{"gID":"5879","id":"5879","name":"5879","overlapCount":1,"color":"#00ff00"},{"gID":"10817","id":"10817","name":"10817","overlapCount":1,"color":"#00ff00"},{"gID":"23043","id":"23043","name":"23043","overlapCount":7,"color":"#b4ff00"},{"gID":"7409","id":"7409","name":"7409","overlapCount":1,"color":"#00ff00"},{"gID":"23236","id":"23236","name":"23236","overlapCount":20,"color":"#ff0000"},{"gID":"2786","id":"2786","name":"2786","overlapCount":3,"color":"#3cff00"},{"gID":"4690","id":"4690","name":"4690","overlapCount":9,"color":"#f0ff00"},{"gID":"2885","id":"2885","name":"2885","overlapCount":1,"color":"#00ff00"},{"gID":"27040","id":"27040","name":"27040","overlapCount":1,"color":"#00ff00"},{"gID":"1756","id":"1756","name":"1756","overlapCount":1,"color":"#00ff00"},{"gID":"196403","id":"196403","name":"196403","overlapCount":1,"color":"#00ff00"},{"gID":"2534","id":"2534","name":"2534","overlapCount":4,"color":"#5aff00"},{"gID":"4915","id":"4915","name":"4915","overlapCount":2,"color":"#1eff00"},{"gID":"7278","id":"7278","name":"7278","overlapCount":12,"color":"#ffc200"},{"gID":"5894","id":"5894","name":"5894","overlapCount":5,"color":"#78ff00"},{"gID":"6000","id":"6000","name":"6000","overlapCount":6,"color":"#96ff00"},{"gID":"30837","id":"30837","name":"30837","overlapCount":18,"color":"#ff3100"},{"gID":"5911","id":"5911","name":"5911","overlapCount":16,"color":"#ff6100"},{"gID":"9924","id":"9924","name":"9924","overlapCount":1,"color":"#00ff00"},{"gID":"2902","id":"2902","name":"2902","overlapCount":4,"color":"#5aff00"},{"gID":"1840","id":"1840","name":"1840","overlapCount":1,"color":"#00ff00"},{"gID":"1742","id":"1742","name":"1742","overlapCount":1,"color":"#00ff00"},{"gID":"28964","id":"28964","name":"28964","overlapCount":1,"color":"#00ff00"},{"gID":"81","id":"81","name":"81","overlapCount":1,"color":"#00ff00"},{"gID":"8525","id":"8525","name":"8525","overlapCount":8,"color":"#d2ff00"},{"gID":"8831","id":"8831","name":"8831","overlapCount":1,"color":"#00ff00"},{"gID":"8655","id":"8655","name":"8655","overlapCount":17,"color":"#ff4900"},{"gID":"3688","id":"3688","name":"3688","overlapCount":6,"color":"#96ff00"},{"gID":"10125","id":"10125","name":"10125","overlapCount":8,"color":"#d2ff00"},{"gID":"2039","id":"2039","name":"2039","overlapCount":14,"color":"#ff9200"},{"gID":"4638","id":"4638","name":"4638","overlapCount":1,"color":"#00ff00"},{"gID":"2316","id":"2316","name":"2316","overlapCount":1,"color":"#00ff00"},{"gID":"10863","id":"10863","name":"10863","overlapCount":1,"color":"#00ff00"},{"gID":"54822","id":"54822","name":"54822","overlapCount":3,"color":"#3cff00"},{"gID":"116443","id":"116443","name":"116443","overlapCount":1,"color":"#00ff00"},{"gID":"7222","id":"7222","name":"7222","overlapCount":1,"color":"#00ff00"},{"gID":"7277","id":"7277","name":"7277","overlapCount":1,"color":"#00ff00"},{"gID":"2048","id":"2048","name":"2048","overlapCount":1,"color":"#00ff00"},{"gID":"5581","id":"5581","name":"5581","overlapCount":1,"color":"#00ff00"},{"gID":"5335","id":"5335","name":"5335","overlapCount":8,"color":"#d2ff00"},{"gID":"5578","id":"5578","name":"5578","overlapCount":1,"color":"#00ff00"},{"gID":"10376","id":"10376","name":"10376","overlapCount":1,"color":"#00ff00"},{"gID":"70","id":"70","name":"70","overlapCount":14,"color":"#ff9200"},{"gID":"10605","id":"10605","name":"10605","overlapCount":8,"color":"#d2ff00"},{"gID":"10399","id":"10399","name":"10399","overlapCount":1,"color":"#00ff00"},{"gID":"2776","id":"2776","name":"2776","overlapCount":18,"color":"#ff3100"}]
            ,"k":10,"l":10,"isUnionSet":true,"nodeSetNr":0,
            "relationshipTypes": [
                "pp"
            ]
        });



    });

    function drawSigmaGraph(inputGraph){
        $( "#spinner").hide();

        $("#graph-container").empty();
        if(inputGraph.nodes == "" || inputGraph.nodes == null){
            $("#graph-container").append('<h1 class="graphText">No graph were found for the given K and L values.</h1>');
            return;
        }

        g = {
            nodes: [],
            edges: []
        };

        for (i = 0; i < inputGraph.nodes.length; i++) {
            g.nodes.push({
                id: 'n' + inputGraph.nodes[i].id,
                label: 'Node ' + inputGraph.nodes[i].name,
                x: Math.random(),
                y: Math.random(),
                size: 1,
                color: inputGraph.nodes[i].color
            });
        }

        for (i = 0; i < inputGraph.edges.length; i++) {
            g.edges.push({
                id: 'e' + i,
                source: 'n' + inputGraph.edges[i].source,
                target: 'n' + inputGraph.edges[i].target,
                size: inputGraph.edges[i].value,
                color: '#ccc'
            });
        }

        var s = new sigma({
            graph: g,
            type: 'canvas',
            container: 'graph-container'
        });

        // ForceAtlas Layout
        s.startForceAtlas2();


        var isRunning = true;
        document.getElementById('stop-layout').addEventListener('click',function() {
            if (isRunning) {
                isRunning = false;
                s.stopForceAtlas2();
                document.getElementById('stop-layout').childNodes[0].nodeValue = 'Start Layout';
                document.getElementById('download-button').prop("disabled", false);
            } else {
                isRunning = true;
                s.startForceAtlas2();
                document.getElementById('stop-layout').childNodes[0].nodeValue = 'Stop Layout';
                document.getElementById('download-button').prop("disabled", true);
            }
        },true);

        document.getElementById('download-button').addEventListener('click',function(){
            alert("hmm");
            if(document.getElementById('sigmaImage') != null && document.getElementById('sigmaImage') != undefined){
                alert("trying to draw image");
                try{
                    alert(s.height);
                    var canvasList = document.getElementById('graph-container').childNodes;
                    var mergedCanvas = document.getElementById('mergedCanvas');
                    var cntxt = mergedCanvas.getContext("2d");

                    for(var i = 0; i < canvasList.length; i++){
                        alert(canvasList[i].tagName);
                        if(canvasList[i].tagName == "CANVAS"){
                            cntxt.drawImage(canvasList[i], 0, 0);
                        }
                    }
                    var dataURL = mergedCanvas.toDataURL("png");
                    alert(dataURL);
                    location.href = dataURL;

                    alert("finished no errors");
                }catch(err) {
                    alert("error occured");
                    document.getElementById("errMsg").innerHTML = err.message;
                }
            }
        },true);



    }
</script>
<r:layoutResources/>
</body>
</html>