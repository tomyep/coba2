import React, { Component } from 'react';

import axios from 'axios';

import "./Stock.css";
// import index from 'axios';

const convertRupiah = require('rupiah-format');


class Stock extends Component {
  constructor(){
    super();
  this.state = {value: 'Namapart'};
  this.handleChange = this.handleChange.bind(this);
 
  this.state2={dataSaya2:[ ]};
  this.state={dataSaya:[ ]}
  }

  
  componentWillMount(){
    var url= 'http://localhost:3210/data';
      axios.get(url).then((ambilData)=>{
        console.log(ambilData.data);
        this.setState({dataSaya: ambilData.data})
      })
  } 

    klikDelete(){
      var url= 'http://localhost:3210/deletedata';
      axios.post(url, {
        Delete :  this.refs.Delete.value
      })
      .then((respone)=>{
        console.log(respone)
      })
      .catch((respone)=>{
        console.log(respone)
      })
  }

    klikTarikdata(){
      var url= 'http://localhost:3210/tarikdata';
      axios.post(url, {
        Tarikdatakolom :  this.refs.Tarikdatakolom.value,
        Tarikdata : this.refs.Tarikdata.value
      })
      .then((respone)=>{
        console.log(respone)
      })
      .catch((respone)=>{
        console.log(respone)
      })
    }

     klikHasiltarikdata(){  
    var url= 'http://localhost:3210/tarikdata2';
          axios.get(url).then((ambilData)=>{
            console.log(ambilData.data);
            this.setState({dataSaya2: ambilData.data})
          })
      } 
 
    handleChange(event) {
      this.setState({value: event.target.value});
    }
  
    


  render() {
    var value = this.state.value;

    const dataFinal2 = this.state2.dataSaya2.map((item, index)=>{ 
      var No = item.No
      var Namapart = item.Namapart
      var Namalist = item.Namalist
      var Nopart = item.Nopart
      var Noseritoko = item.Noseritoko
      var Jenismobil = item.Jenismobil
      var Ukurandalam = item.Ukurandalam
      var Ukuranluar = item.Ukuranluar
      var Ukurantinggi = item.Ukurantinggi
      var Netto = item.Netto
      var Pricelist = item.Pricelist
      var Diskonlist = item.Diskonlist
      var Supplier = item.Supplier
      var HargaRetail1 = item.HargaRetail1
      var HargaRetail2 = item.HargaRetail2
      var HargaRetailedit = item.HargaRetailedit
      var HargaGrosir1 = item.HargaGrosir1
      var HargaGrosir2 = item.HargaGrosir2
      var Keterangan = item.Keterangan
      var MinimalStock = item.MinimalStock
      var Stock = item.Stock
      
      return <tr className="colom-data2"  key={index}>
      {/* bikin header listnya */}
            <td>{index}</td>
            <td>{No}</td>
            <td>{Namapart}</td>
            <td>{Namalist}</td>
            <td>{Nopart}</td>
            <td>{Noseritoko}</td>
            <td>{Jenismobil}</td>
            <td>{Ukurandalam}</td>
            <td>{Ukuranluar}</td>
            <td>{Ukurantinggi}</td>
            <td>{convertRupiah.convert(Netto)}</td>
            <td>{convertRupiah.convert(Pricelist)}</td>
            <td>{Diskonlist}</td>
            <td>{Supplier}</td>
            <td>{convertRupiah.convert(HargaRetail1)}</td>
            <td>{convertRupiah.convert(HargaRetail2)}</td>
            <td>{convertRupiah.convert(HargaRetailedit)}</td>
            <td>{convertRupiah.convert(HargaGrosir1)}</td>
            <td>{convertRupiah.convert(HargaGrosir2)}</td>
            <td>{Keterangan}</td>
            <td>{MinimalStock}</td>
            <td>{Stock}</td>
            
         </tr>
         ; })
  

    // ---Ambil data pertama Normal---
    const dataFinal = this.state.dataSaya.map((item, index)=>{ 
      var No = item.No
      var Namapart = item.Namapart
      var Namalist = item.Namalist
      var Nopart = item.Nopart
      var Noseritoko = item.Noseritoko
      var Jenismobil = item.Jenismobil
      var Ukurandalam = item.Ukurandalam
      var Ukuranluar = item.Ukuranluar
      var Ukurantinggi = item.Ukurantinggi
      var Netto = item.Netto
      var Pricelist = item.Pricelist
      var Diskonlist = item.Diskonlist
      var Supplier = item.Supplier
      var HargaRetail1 = item.HargaRetail1
      var HargaRetail2 = item.HargaRetail2
      var HargaRetailedit = item.HargaRetailedit
      var HargaGrosir1 = item.HargaGrosir1
      var HargaGrosir2 = item.HargaGrosir2
      var Keterangan = item.Keterangan
      var MinimalStock = item.MinimalStock
      var Stock = item.Stock
      
      return <tr className="colom-data"  key={index}>
      {/* bikin header listnya */}
            <td>{index}</td>
            <td>{No}</td>
            <td>{Namapart}</td>
            <td>{Namalist}</td>
            <td>{Nopart}</td>
            <td>{Noseritoko}</td>
            <td>{Jenismobil}</td>
            <td>{Ukurandalam}</td>
            <td>{Ukuranluar}</td>
            <td>{Ukurantinggi}</td>
            <td>{convertRupiah.convert(Netto)}</td>
            <td>{convertRupiah.convert(Pricelist)}</td>
            <td>{Diskonlist}</td>
            <td>{Supplier}</td>
            <td>{convertRupiah.convert(HargaRetail1)}</td>
            <td>{convertRupiah.convert(HargaRetail2)}</td>
            <td>{convertRupiah.convert(HargaRetailedit)}</td>
            <td>{convertRupiah.convert(HargaGrosir1)}</td>
            <td>{convertRupiah.convert(HargaGrosir2)}</td>
            <td>{Keterangan}</td>
            <td>{MinimalStock}</td>
            <td>{Stock}</td>
            
         </tr>
         ; })

    return (
  <div>
    <div className = "header-stock">
    <h1>Stock</h1>
    </div>

    <div className = "Get-Delete">
      {/* ---Delete--- */}
      <button onClick={()=>{this.klikDelete()}}>
      DELETE
      </button>
      <input className="Delete" placeholder="Delete Number" type='number' ref='Delete'></input>
    </div>

    <br /><br />

    <div className="tabel-data">
    <table>
      <tbody>
      <tr>
        <th>NO</th>
        <th>ID</th>
        <th>NAMAPART</th>
        <th>NAMALIST</th>
        <th>NOPART</th>
        <th>NOSERITOKO</th>
        <th>JENISMOBIL</th>
        <th>UK.DALAM</th>
        <th>UK.LUAR</th>
        <th>UK.TINGGI</th>
        <th>NETTO</th>
        <th>PRICE LIST</th>
        <th>DISKON LIST</th>
        <th>SUPPLIER</th>
        <th>HARGA.RETAIL1</th>
        <th>HARGA.RETAIL2</th>
        <th>HARGA.RETAIL.EDIT</th>
        <th>HARGA.GROSIR1</th>
        <th>HARGA.GROSIR2</th>
        <th>KETERANGAN</th>
        <th>MINIMALSTOCK</th>
        <th>STOCK</th>
      
      </tr>
      </tbody>
      <tbody>
      {dataFinal}
      </tbody>
      </table>
    </div>
    
    <div className="judul-tabel-edit" >
      <h2>Tarik data yang akan di edit</h2>
    </div>

      {/* ---TarikData--- */}
      <div >
      <button className="tarik-data" onClick={()=>{this.klikTarikdata()}}>
      Tarik Data Id
      </button>
      <label>
        <select className="tarik-data" value={this.state.value} onChange={this.handleChange} ref ="Tarikdatakolom">
          <option defaultValue="Namapart">Namapart</option>
          <option value="Noid">Noid</option>
          <option value="Namalist">Namalist</option>
          <option value="Nopart">Nopart</option>
          <option value="Noseritoko">Noseritoko</option>
          <option value="JenisMobil">JenisMobil</option>
          <option value="Ukurandalam">Ukurandalam</option>
          <option value="Ukuranluar">Ukuranluar</option>
          <option value="Ukurantinggi">Ukurantinggi</option>
        </select>
      </label>
      <input className="tarik-data" placeholder="Search..." type='text' ref='Tarikdata'></input>
      <br/>
      {value}
      </div>
      
      <div>
        <br /> <br />
        <button className="coba" onClick={()=>{this.klikHasiltarikdata()}}>HALO</button>
      </div>
      
      <div>{dataFinal2}</div>

    
      <div>
        <br/><br/><br/><br/><br/><br/><br/>
      </div>
    

  </div>
    );
  }
}

export default Stock;
